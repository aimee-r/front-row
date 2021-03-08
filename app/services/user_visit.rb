require "http"

class UserVisit
  def self.visit(ip, event_id, page)
    ip = ip
    raise
    response = HTTP.get("https://geolocation-db.com/json/344ec440-6bfc-11eb-a0c0-b5dee9e67313/89.35.196.218")
    hash = JSON.parse(response)

    UserView.create!(
      code: hash["country_code"],
      country: hash["country_name"],
      city: hash["city"],
      postal: hash["postal"],
      lat: hash["latitude"],
      long: hash["longitude"],
      ip: hash["IPv4"],
      state: hash["state"],
      event_id: event_id.id,
      page: page
    )
  end
end

