# frozen_string_literal: true

require 'dickserver/output'

module Dump

  class Channel

    attr_accessor :channel_name
    attr_reader :formatter
    def initialize(channel_name = '', formatter = Output::JsonFormatter.new)
      @channel_name = channel_name
      @formatter = formatter
    end

    # For the given channel, retrieve all messages by a specific user
    def user_messages(user_name)

    end

    def user_message(user_name, message_id)

    end

    def formatter=(formatter)
      raise TypeError unless formatter.is_a? Output::Formatter
    end
  end
end
