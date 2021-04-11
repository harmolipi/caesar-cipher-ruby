# frozen_string_literal: true

require './lib/caesar_cipher'

describe '#caesar_cipher' do
  it "returns 'bbb' when shifting 'aaa' by 1" do
    expect(caesar_cipher('aaa', 1)).to eql('bbb')
  end

  it "returns 'yyy' when shifting 'aaa' by -2" do
    expect(caesar_cipher('aaa', -2)).to eql('yyy')
  end

  it 'can handle capital letters' do
    expect(caesar_cipher('Bond James Bond', 19)).to eql('Uhgw Ctfxl Uhgw')
  end

  it 'can handle huge shifts' do
    expect(caesar_cipher('hello', 209)).to eql('ifmmp')
  end

  it 'can handle multiple words' do
    expect(caesar_cipher('hey how are ya', 12)).to eql('tqk tai mdq km')
  end

  it 'can handle the above and symbols' do
    expect(caesar_cipher('To be, or not to be... that is the question!',
                         20)).to eql('Ni vy, il hin ni vy... nbun cm nby koymncih!')
  end

  it 'can decode' do
    expect(caesar_cipher('Id qt, dg cdi id qt... iwpi xh iwt fjthixdc!',
                         -15)).to eql('To be, or not to be... that is the question!')
  end
end
