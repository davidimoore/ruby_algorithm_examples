require_relative '../lib/character_counter'
require 'nokogiri'
describe CharacterCounter do


  context 'total_lines' do
    let(:macbeth_analyzer) { CharacterCounter.new }
    let(:xml_doc) { File.read('spec/support/fixtures/macbeth.xml') }
    let(:macbeth) {'MACBETH'}
    let(:macduff) {'MACDUFF'}
    it 'should count the total number of lines spoken by character' do
      expect(macbeth_analyzer.total_lines( document: xml_doc, speaker_name: macbeth))
      .to eq 1
    end

    it 'should count the total number of lines for a character with multiple turns speaking'  do
      expect(macbeth_analyzer.total_lines( document: xml_doc, speaker_name: macduff))
          .to eq 2
    end
  end
end