# frozen_string_literal: true

module RubyForms
  # Base Resource
  class Poll < Grape::API
    resource :polls do
      desc 'returns polls details'
      get do
        polls = ::Poll.all
        present polls, with: RubyForms::Entities::Poll, with_options: true
      end

      get ':id' do
        poll = ::Poll.find(params[:id])
        present poll, with: RubyForms::Entities::Poll, with_options: true
      end

      desc 'create a poll'
      params do
        requires :title, type: String, desc: 'title of the poll'
        optional :options, type: [String], desc: 'options for the poll'
      end
      post do
        # TODO: accept a quiz for creating a poll
        poll = ::Poll.create(question: params[:question], poll_type_id: params[:poll_type_id])
        present poll, with: RubyForms::Entities::Poll
      end

      desc 'updates a poll'
      params do
        optional :question, type: String, desc: 'question of the poll'
        optional :poll_type_id, type: String, desc: 'type of the poll'
        optional :poll_options, type: [Hash], desc: 'options for the poll'
        optional :quiz_id, type: [String], desc: 'quiz the poll belongs to'
      end
      put ':id' do
        poll = ::Poll.find(params[:id])
        poll.update(
          poll_options: poll.options.create(params[:poll_options]),
          poll_type_id: params[:poll_type_id],
          question: params[:question]
        )
        present poll, with: RubyForms::Entities::Poll
      end
    end
  end
end
