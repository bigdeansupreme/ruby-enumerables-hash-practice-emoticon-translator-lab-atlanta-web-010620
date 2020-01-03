# require modules here
require 'yaml'

def load_library(file_path)
  file = File.read(file_path)
    emoticons = {"get_meaning" => {}, "get_emoticon" => {}}
    
end

def get_japanese_emoticon(file_path, emoticon)
  emoticons = load_library(file_path)
  emoji = emoticons.values.find {|faces| faces[0] == emoticon}
  emoji == nil ? "Sorry, that emoticon was not found" : emoji[1]
  
end

def get_english_meaning
  # code goes here
end