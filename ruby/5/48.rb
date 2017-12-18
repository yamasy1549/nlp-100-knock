require './util'

dependencies.each do |sentence|
  sentence.each do |chunk|
    if chunk.depends? && chunk.poss.include?("名詞")
      path = chunk.path_to_root(sentence).map(&:surfaces)
      puts path.join(" -> ")
    end
  end
end