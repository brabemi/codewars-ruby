require 'rspec'
require_relative '../5-rot13'

describe 'Rot13' do
  it 'test' do
    # expect(rot13('test') == 'grfg', 'Input: test , Expected Output: grfg , Actual Output: ' + rot13('test'))
    expect(rot13('test')).to eq 'grfg'
  end
  it 'Test' do
    # expect(rot13('Test') == 'Grfg', 'Input: Test , Expected Output: Grfg , Actual Output: ' + rot13('Test'))
    expect(rot13('Test')).to eq 'Grfg'
  end
end
