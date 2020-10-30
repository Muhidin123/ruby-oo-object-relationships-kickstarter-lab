class Project
    attr_accessor :title

    @@all = []

    def initialize(title)
        @title = title
    end

    def add_backer(backer)
        project_backer = ProjectBacker.new(self, backer)
    end


    def backers
        ProjectBacker.all.select {|x| x.project == self}.map {|backer| backer.backer}
    end
end