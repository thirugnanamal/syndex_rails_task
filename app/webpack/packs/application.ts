// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

import Rails from "@rails/ujs";
import Turbolinks from "turbolinks";
import $ from "jquery";

import "@rails/activestorage";
import "foundation-sites";

// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)

import "../stylesheets/application";
import "channels";
import "controllers";

// eslint-disable-next-line @typescript-eslint/no-unused-vars
const imagePath = require.context("../images", true);
// eslint-disable-next-line @typescript-eslint/no-unused-vars

Rails.start();
Turbolinks.start();

$(document).on("turbolinks:load", () => {
  $(document).foundation();
});
