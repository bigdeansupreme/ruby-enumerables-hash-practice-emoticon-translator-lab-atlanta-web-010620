# require modules here
require 'yaml'

def load_library(file_path)
  file = File.read(file_path)
    emoticons = {"get_meaning" => {}, "get_emoticon" => {}}
     YAML.load_file(file_path).each do |meaning, describe|
       eng, jan = describe
     emoticons["get_meaning"][jan] = meaning
     emoticons["get_emoticon"][eng] = jan
  end
  emoticons
end

def get_japanese_emoticon(file_path, emoticon)
  emoticons = load_library(file_path)
  result = emoticons["get_emoticon"][emoticon]
  if result
    result
  else
    "Sorry, that emoticon was not found"
  end
  
end

def get_english_meaning(file_path, emoticon)
  emoticons = load_library(file_path)
  result = emoticons["get_meaning"][emoticon]
  
end