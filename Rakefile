CC     = 'gcc'
CFLAGS = '-std=c99 -pedantic -Wall -Wextra -Wmissing-prototypes -Wunreachable-code'
EXEC   = 'test.exe'
ARCH   = (RUBY_PLATFORM =~ /darwin/i) ? '-arch i386' : ''

OBJS  = (Dir['*.s']|Dir['*.c']).map{|e| e.gsub /\.\w$/, '.o'}.uniq
OBJS.delete 'main.o'
TESTS = Dir['*.assertions'].map{|e| e.gsub /\.assertions$/, '.test'}
TESTS.each do |t|
  name = t.gsub /\.test$/, '.o'
  OBJS.delete name
end

desc "Build final executable"
task :default => [EXEC]

desc "Run all .assertions files"
task :test => TESTS do |t|
  t.prerequisites.each do |tes|
    sh "./#{tes}"
  end
end

file EXEC => (OBJS|['main.o']) do |t|
  sh "#{CC} #{ARCH} -o #{t.name} #{t.prerequisites*' '}"
end

rule '.o' => ['.s'] do |t|
  sh "#{CC} #{ARCH} -c -o #{t.name} #{t.source}"
end

rule '.s' => ['.c'] do |t|
  sh "#{CC} #{ARCH} #{CFLAGS} -S -o #{t.name} #{t.source}"
end

rule '.c' => ['.assertions'] do |t|
  mainfunc = File.readlines(t.source).map{|line|
    line.chomp!
    "printf(\"#{line.gsub(/"/, '\"')} \"); puts((#{line}) ? oktext : failtext);"
  }*"\n"
  
  File.open t.name, "w" do |f|
    f.puts %{#include <stdio.h>\n#include "strasm.h"\n\nint main(void){
      const char *oktext = "\033[32mOK\033[0m";
      const char *failtext = "\033[31mFAIL\033[0m";
      #{mainfunc}
      return 0;
    }}
  end
  puts "#{t.name} created from #{t.source}"
end

rule '.test' => ['.o']|OBJS do |t|
  sh "#{CC} #{ARCH} -o #{t.name} #{t.prerequisites*' '}"
end

desc "Remove intermediate files"
task :clean => :cleant do
  sh "rm -f #{OBJS*' '}"
  Dir['*.c'].each do |f|
    sh "rm -f #{f.gsub /\.c$/, '.s'}"
  end
end

desc "Remove assertions intermediate files"
task :cleant do
  Dir['*.assertions'].each do |f|
    name = f.gsub /\.assertions$/, ''
    sh "rm -f #{name}.test #{name}.o #{name}.c #{name}.s"
  end
end

desc "Remove all compilation products"
task :clobber => [:clean] do
  sh "rm -f #{EXEC}"
end
