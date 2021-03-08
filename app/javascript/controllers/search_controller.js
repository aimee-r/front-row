// Visit The Stimulus Handbook for more details 
// https://stimulusjs.org/handbook/introduction
// 
// This example controller works with specially annotated HTML like:
//
// <div data-controller="hello">
//   <h1 data-target="hello.output"></h1>
// </div>

import { Controller } from "stimulus"

export default class extends Controller {
  static targets = [ "input", "container" ]

  connect() {
    console.log(this.inputTarget)
  }

  searchResults() {
    const value = document.getElementById('form-field').value
    fetch(`/search?query=${value}`, { headers: { accept: "application/json" } })
      .then(response => response.json())
      .then((data) => {
        console.log(data)
        this.containerTarget.innerHTML = ""
        this.containerTarget.insertAdjacentHTML("afterbegin", "<h3 style='color: black'>Events</h3>")
        data.events.forEach((e) => {
          const string = `<p><a href="/events/${e.id}">${e.event_name}</a></p>`

          this.containerTarget.insertAdjacentHTML("afterbegin", string)
        })
        this.containerTarget.insertAdjacentHTML("afterbegin", "<h3 style='color: black'>Artists</h3>")
        data.artists.forEach((e) => {
          const string = `<p><a href="/artist/${e.id}">${e.artist_name}</a></p>`

          this.containerTarget.insertAdjacentHTML("afterbegin", string)
        })
        this.containerTarget.insertAdjacentHTML("afterbegin", "<h3 style='color: black'>Genres</h3>")
        data.events.forEach((e) => {
          const string = `<p>${e.name}</p>`

          this.containerTarget.insertAdjacentHTML("afterbegin", string)
        })
        // this.containerTarget.innerHTML = data;
      });
  }

}


