class CharacterCounter
  attr_accessor :parser


  def initialize( parser: Nokogiri )
    @parser =  parser
  end


  def total_lines(document:, speaker_name:)
    speeches = select_speaker_nodes(document, speaker_name)
    select_speaker_lines(speeches)
  end

  private

  def select_speaker_nodes(document, speaker_name)
    @parser::XML(document).css("SPEECH").select do |nodes|
      nodes.css("SPEAKER").text == "#{speaker_name}"
    end
  end

  def select_speaker_lines(speaker_nodes)
    speaker_nodes.map{|speech_node| speech_node.css("LINES") }.count
  end
end