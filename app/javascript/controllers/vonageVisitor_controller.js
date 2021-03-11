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

  setEventListeners = function (session) {
    const streams = [];
    const subscribers = [];
    let broadcastActive = true;
    /** Subscribe to new streams as they are published */
    /* added */
    session.on('streamCreated', function (event) {
      session.subscribe(event.stream, 'videos',{width: 900, height: 300, insertMode: 'append'}, (error) => {
        if (error) {
          event.preventDefault();
          console.log(error);
        } else {
          'subscriber'
        }
      });
    });


    session.on('streamDestroyed',  function (event) {
      const index = streams.indexOf(event.stream);
      streams.splice(index, 1);
      if (streams.length < 4) {
        document.getElementById('videoContainer').classList.remove('wrap');
      }
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


