module MyEcho
  class Cli
    def initialize(@io : IO = STDOUT)
    end

    def run(args)
      @io.print args.join(" ") + "\n"
    end
  end
end
