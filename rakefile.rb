directory "target"

task :default => [:be, :bc, :je, :jc] do
  puts "All done."
end

task :be => "target" do
  sh "cd src; xelatex -output-directory=../target BaojunSu-Resume-English.tex > /dev/null; cd ../target; rm *.aux *.log *.out"
end

task :bc => "target" do
  sh "cd src; xelatex -output-directory=../target BaojunSu-Resume-Chinese.tex > /dev/null; cd ../target; rm *.aux *.log *.out"
end

task :je => "target" do
  sh "cd src; xelatex -output-directory=../target JingZhao-Resume-English.tex > /dev/null; cd ../target; rm *.aux *.log *.out"
end

task :jc => "target" do
  sh "cd src; xelatex -output-directory=../target JingZhao-Resume-Chinese.tex > /dev/null; cd ../target; rm *.aux *.log *.out"
end

