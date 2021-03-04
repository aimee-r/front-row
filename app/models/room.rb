class Room < ApplicationRecord
  before_create do
    opentok = OpenTok::OpenTok.new ENV["VONAGE_API_KEY"], ENV["VONAGE_API_SECRET"]
    session = opentok.create_session
    self.vonage_session_id = session.session_id
  end
end
