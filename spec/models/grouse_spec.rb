# frozen_string_literal: true

require 'rails_helper'
require 'grouse'

RSpec.describe "String typeof Grouse." do
  it 'koyomi, should to be kind of String' do
    expect("#{koyomi}").to be_kind_of(String)
  end

  it 'gem_version, should to be a kind of String' do
    expect("#{gem_version}").to be_a_kind_of(String)
  end

  it 'version, should to be an instance of String' do
    expect("#{version}").to be_an_instance_of(String)
  end

  it 'udp_socket, should to be instance of String' do
    expect("#{udp_socket}").to be_instance_of(String)
  end

  it 'list_socket, should to be a String' do
    expect("#{list_socket}").to be_a(String)
  end

  it 'eq_socket, should to be an String' do
    expect("#{eq_socket}").to be_an(String)
  end
end
