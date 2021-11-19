

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

    def my_select
        if block_given?
            result = self.is_a?(Hash) ? {} : []
            for element in self
                if yield element
                    self.is_a?(Hash) ? result.store(element[0], element[1]) : result << element
                end
            end
        else
            puts "Appropriate block not provided"
        end
        result    
    end

    def my_all?
        if block_given?
            self.my_each {|element| return false unless yield element}
            true
        else
            puts "Appropriate block not provided"
        end
    end

    def my_any?
        if block_given?
            self.my_each {|element| return true if yield element}
            false
        else
            puts "Appropriate block not provided"
        end
    end

    def my_none?
        if block_given?
            self.my_each {|element| return false if yield element}
            true
        else
            puts "Appropriate block not provided"
        end
    end

end













