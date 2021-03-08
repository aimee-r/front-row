import { Controller } from "stimulus"

export default class extends Controller {
  static targets = [ "input", "container" ]

  connect() {
    console.log(this.inputTarget)
  }

  searchResults() {
    const value = document.getElementById('form-field').value
    fetch(`/search?query=${value}`, { headers: { accept: "text/html" } })
      .then(response => response.text())
      .then((data) => {
        this.containerTarget.innerHTML = data;
      });
  }
}
