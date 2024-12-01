module RootHelper
    def format_link_index(index)
        if index < 10
            "00#{index}"
        elsif index < 100
            "0#{index}"
        else
            index.to_s
        end
    end
end
