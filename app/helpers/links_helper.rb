module LinksHelper
    def resolve_link(link)
        if link !~ %r{\Ahttp://} && link !~ %r{\Ahttps://}
            "https://#{link}"
        else
            link
        end
    end
end
