require 'dogecoin_api/version'
require 'httparty'

module DogecoinApi
  @api_key = ENV['DOGE_API_KEY']
  @PIN = ENV['PIN']
  @base_url = "https://dogeapi.com/wow/v2/?api_key="

  def self.create_user(user_id)
    endpoint = "create_user&user_id=#{user_id}"
    self.call(endpoint)
  end

  def self.get_user_address(user_id)
    endpoint = "get_user_address&user_id=#{user_id}"
    self.call(endpoint)
  end

  def self.get_user_balance(user_id)
    endpoint = "get_user_balance&user_id=#{user_id}"
    self.call(endpoint)
  end

  def self.withdraw_from_user(user_id, amount, payment_address)
    endpoint = "withdraw_from_user&user_id=#{user_id}&pin=#{@PIN}&amount_doge=#{amount}&payment_address=#{payment_address}"
    self.call(endpoint)
  end

  def self.move_to_user(amount, from_user_id, to_user_id)
    endpoint = "move_to_user&to_user_id=#{to_user_id}&from_user_id=#{from_user_id}&amount_doge=#{amount}"
    self.call(endpoint)
  end

  def self.get_users
    endpoint = "get_users"
    self.call(endpoint)
  end

  def self.get_info
    endpoint = "get_info"
    self.call(endpoint)
  end

  private

  def self.call(endpoint)
    response = HTTParty.get("#{@base_url + @api_key + "&a=" + endpoint}")
    response["data"]
  end
end
