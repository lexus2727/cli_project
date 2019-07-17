require 'bundler/setup'
require 'open-uri'
require 'nokogiri'
require 'pry'
Bundler.require(:default, :development)


require_relative "cli_project/version"
require_relative './scraper'
require_relative './shoe'
require_relative './cli'