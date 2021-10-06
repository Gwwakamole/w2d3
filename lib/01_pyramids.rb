def ask_stage
  puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ? (25 max)"
  print ">"
  stage = gets.chomp.to_i - 1
  return stage
end

def message
  puts "Voici la pyramide :"
end

def half_pyramid(stage)
  1.upto(stage) do |i|
    (stage-i).times {print " "}
    i.times { print "#" }
  puts ""
  end
end

def full_pyramid(stage)
  0.upto(stage) do |i|
    print (" " * (stage-i)) + ("#" * (i + i + 1)) + "\n"
  end
end

def wtf_pyramid(stage)
  stage -= 1
  stage.downto(0) do |i|
    print (" " * (stage-i + 1)) + ("#" * (i + i + 1)) + "\n"
  end
end

def perform
  stage = ask_stage
  message
  full_pyramid(stage)
  wtf_pyramid(stage)
end

perform