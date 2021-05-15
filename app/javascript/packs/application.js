// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.
//= require underscore
//= require gmaps/google
//= require toastr
//= require_tree .

import JQuery from 'jquery'
window.$ = window.JQuery = JQuery
import Rails from "@rails/ujs"
import "@hotwired/turbo-rails"
import * as ActiveStorage from "@rails/activestorage"
import "channels"

import 'toastr';
import 'toastr/build/toastr.min';
import "stylesheets/tailwind/before.scss"
import "stylesheets/application.scss"
import "stylesheets/tailwind/after.scss"
import "@fortawesome/fontawesome-free/css/all"

import toastr from 'toastr'
window.toastr = toastr
Rails.start()
ActiveStorage.start()
// Support component names relative to this directory:
var componentRequireContext = require.context("components", true);
var ReactRailsUJS = require("react_ujs");
ReactRailsUJS.useContext(componentRequireContext);
