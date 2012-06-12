CC     = 'gcc'
CFLAGS = '-std=c99 -pedantic -Wall -Wextra -Wmissing-prototypes -Wunreachable-code'
EXEC   = 'test.exe'
ARCH   = (RUBY_PLATFORM =~ /darwin/i) ? '-arch i386' : ''

OBJS  = (Dir['*.s']).map{|e| e.gsub /\.\w$/, '.o'}.uniq
OBJS.push 'strasm.o'

desc "Build final executable"
task :default => [EXEC]

desc "Build an executable"
rule '.exe' => (['.o']|OBJS) do |t|
  sh "#{CC} #{ARCH} -o #{t.name} #{t.prerequisites*' '}"
end

desc "Build object from assembly"
rule '.o' => ['.s'] do |t|
  sh "#{CC} #{ARCH} -c -o #{t.name} #{t.source}"
end

desc "Build assembly from source"
rule '.s' => ['.c'] do |t|
  sh "#{CC} #{ARCH} #{CFLAGS} -S -o #{t.name} #{t.source}"
end

desc "Remove intermediate files"
task :clean do
  sh "rm -f #{OBJS*' '}"
end

desc "Remove intermediate files for C sources"
task :cleanc do
  Dir['*.c'].each do |f|
    sh "rm -f #{f.gsub /c$/, 's'} #{f.gsub /c$/, 'o'}"
  end
end

desc "Remove all compilation products"
task :clobber => [:clean, :cleanc] do
  sh "rm -f #{Dir['*.exe']*' '}"
end
