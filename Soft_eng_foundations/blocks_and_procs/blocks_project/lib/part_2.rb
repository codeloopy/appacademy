require 'byebug'

def all_words_capitalized?(words)
  words.all? { |w| w == w.capitalize }
end




def no_valid_url?(urls)
  valid_domains = ['com', 'net', 'io', 'org']
  urls.none? do |web_addr|
    domain = web_addr.split('.')[-1]
    valid_domains.include?(domain)
  end
end




def any_passing_students?(students)
  students.any? do |student|
    avg_grade = (student[:grades].sum / student[:grades].length)
     avg_grade >= 75
  end
end









# aA's Solution

def all_words_capitalized?(words)
  words.all? { |w| w == w.capitalize }
end


def no_valid_url?(urls)
  valid_endings = ['com', 'net', 'io', 'org']
  
  urls.none? do |url|
    valid_endings.any? { |ending| url.end_with?(ending)}
  end
end


def any_passing_students?(students)
  students.any? do |student|
    grades = student[:grades]
    avg = grades.sum / grades.length * 1.0
    avg >= 75
  end
end