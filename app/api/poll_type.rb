# frozen_string_literal: true

module RubyForms
  # Base Resource
  class PollType < Grape::API
    resource :poll_types do
      desc 'returns poll types details'
      get do
        poll_types = ::PollType.all
        present poll_types, with: RubyForms::Entities::PollType, with_options: true
      end

      desc 'creates a poll type'
      params do
        requires :text, type: String, desc: 'text of the poll type'
      end
      post do
        poll_type = ::PollType.create(title: params[:title])
        present poll_type, with: RubyForms::Entities::PollType
      end
    end
  end
end
