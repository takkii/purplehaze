# frozen_string_literal: true

describe String do
  it 'should to be kind of String' do
    expect('hello').to be_kind_of(String)
  end

  it 'should to be a kind of String' do
    expect('hello').to be_a_kind_of(String)
  end

  it 'should to be an instance of String' do
    expect('hello').to be_an_instance_of(String)
  end

  it 'should to be instance of String' do
    expect('hello').to be_instance_of(String)
  end

  it 'should to be a String' do
    expect('hello').to be_a(String)
  end

  it 'should to be an String' do
    expect('hello').to be_an(String)
  end
end
