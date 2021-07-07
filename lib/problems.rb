# Run `bundle exec rspec` and satisy the specs.
# You should implement your methods in this file.
# Feel free to use the debugger when you get stuck.

def largest_prime_factor(num)
    # find the array of prime
    prime_arr = []
    (1..num).each do |i|
        if num % i == 0 && prime?(i)
            prime_arr << i
        end
    end

    prime_arr[-1]
end

def prime?(n)
    if n < 2
      return false
    end
  
    (2...n).each do |i|
      if n % i == 0
        return false
      end
    end
  
    return true
end


def unique_chars?(string)
    unique = Hash.new(0)

    string.each_char {|char| unique[char] += 1}

    unique.each do |k, v|
        if v >= 2
            return false
        end
    end
    
    return true
end

def dupe_indices(arr)
    count = Hash.new

    arr.each.with_index do |char, index| 
        if count[char] == nil
            count[char] = [index]
        else
            count[char] << index
        end
    end

    ans = Hash.new

    count.each do |k, v|
        if v.length > 1
            ans[k] = v
        end
    end

    ans

end

def ana_array(arr_1, arr_2)
    arr_1_h = Hash.new(0)
    arr_2_h = Hash.new(0)

    arr_1.each {|char| arr_1_h[char] += 1}
    arr_2.each {|char| arr_2_h[char] += 1}

    if arr_1_h == arr_2_h
        return true
    end

    return false
end