import flatpickr from "flatpickr";
require("flatpickr/dist/themes/dark.css");


const initFlatpickr = () => {
  flatpickr(".datepicker", {
    altInput: true,
    minDate: "today",
    enableTime: true,
    dateFormat: "Y-m-d H:i",
  });
}

export { initFlatpickr };




