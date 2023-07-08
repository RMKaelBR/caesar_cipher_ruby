require 'spec_helper'
require_relative '../caesar_cipher'

RSpec.describe 'Caesar Cipher' do
  it 'shifts letters 3 to the right' do
    expect(caesar_cipher("H", 3)).to eq("K")
    expect(caesar_cipher("E", 3)).to eq("H")
    expect(caesar_cipher("L", 3)).to eq("O")
    expect(caesar_cipher("l", 3)).to eq("o")
    expect(caesar_cipher("o", 3)).to eq("r")
  end

  it 'shifts a string 3 to the right' do
    expect(caesar_cipher("HELLO", 3)).to eq("KHOOR")
    expect(caesar_cipher("hello", 3)).to eq("khoor")
  end

  it 'shifts a string 4 to the right' do
    expect(caesar_cipher("ATTACKATONCE", 4)).to eq("EXXEGOEXSRGI")
  end
  
  it 'shifts letters 1 to the right' do
    expect(caesar_cipher("Z", 1)).to eq("A")
    expect(caesar_cipher("z", 1)).to eq("a")
  end
  
  it 'shifts a string 5 to the right' do
    expect(caesar_cipher("What a string!", 5)).to eq("Bmfy f xywnsl!")
  end

  
end