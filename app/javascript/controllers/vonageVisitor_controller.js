import { Controller } from "stimulus"

export default class extends Controller {
  static targets = [ "output" ]

  connect() {
    console.log(this.data.get("apiKey"))
    this.apiKey = this.data.get("apiKey")
    this.sessionId = this.data.get("sessionId")
    this.token = this.data.get("token")
    this.initializeSession()
  }

  initializeSession() {
   this.session = OT.initSession(this.apiKey, this.sessionId, { connectionEventsSuppressed: true } )

    this.session.connect(this.token, (error) => {
      if (error) {
        this.handleError(error)
      } else {
        this.setEventListeners(this.session);
        this.checkBroadcastStatus(this.session);
      }
    });
  }
  subscribe = function (session, stream) {
    const name = stream.name;
    const insertMode = name === 'Host' ? 'before' : 'after';
    const properties = Object.assign({ name: name, insertMode: insertMode }, insertOptions);
    return session.subscribe(stream, 'hostDivider', properties, function (error) {
      if (error) {
        console.log(error);
      }
    });
  };

  setEventListeners = function (session) {
    const streams = [];
    const subscribers = [];
    let broadcastActive = false;
    /** Subscribe to new streams as they are published */
    session.on('streamCreated', function (event) {
      streams.push(event.stream);
      if (broadcastActive) {
        subscribers.push(subscribe(session, event.stream));
      }
      if (streams.length > 3) {
        document.getElementById('videoContainer').classList.add('wrap');
      }
    });
    session.on('streamDestroyed', function (event) {
      const index = streams.indexOf(event.stream);
      streams.splice(index, 1);
      if (streams.length < 4) {
        document.getElementById('videoContainer').classList.remove('wrap');
      }
    });
    /** Listen for a broadcast status update from the host */
    session.on('signal:broadcast', function (event) {
      const status = event.data;
     const broadcastActive = status === 'active';
      if (broadcastActive) {
        streams.forEach(function (stream) {
          console.log(session)
          const name = stream.name;
          const insertMode = name === 'Host' ? 'before' : 'after';
          const properties = Object.assign({ name: name, insertMode: insertMode }, {width: 900, height: 300, insertMode: 'append'});
          const output =  session.subscribe(stream, 'videos', properties, function (error) {
            if (error) {
              console.log(error);
            }
          });
          subscribers.push(output);
        });
      } else if (status === 'ended') {
        subscribers.forEach(function (subscriber) {
          session.unsubscribe(subscriber);
        });
      }
      console.log(status);
    });
  };

  checkBroadcastStatus = function (session) {
    session.signal({
      type: 'broadcast',
      data: 'status'
    });
  };



  handleError(error) {
    if (error) {
      console.error(error.message)
    }
  }
}
