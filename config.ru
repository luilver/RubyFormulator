# frozen_string_literal: true

require File.expand_path('config/environment', __dir__)

use Rack::RewindableInput::Middleware

run RubyForms::API
