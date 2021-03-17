class ApiVersionConstraint
    def initialize (options)
        @versions = options[:version]
        @default = options[:default]
    end

    def matches?(req)
        @default || req.headers["Accept"].include?["Application/vnd.projetofase8.v#(@version)"]
    end
end    