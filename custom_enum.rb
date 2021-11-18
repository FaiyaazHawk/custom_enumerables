

module Enumerable
    def my_each
        if block_given?
            for element in self
                yield element
            end
        else
            puts "Appropriate block not provided"
        end
    end

    def my_each_with_index
        if block_given?
            i = 0
            while i < self.length
                yield self[i],i

                i += 1
            end
        else
            puts "Appropriate block not provided"
        end
    end

end













