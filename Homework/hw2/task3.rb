require 'benchmark'

def function3A(max)
  prev_prev_num,prev_num,curr_num = 0,0,1
  return max if(0..1).include? max
  for x in (1..max-1) do
    prev_prev_num = prev_num
    prev_num = curr_num
    curr_num = prev_prev_num+prev_num
  end
  curr_num
end

def function3B(max)
  return max if(0..1).include? max
  (function3B(max-1) + function3B(max-2))
end

def test_bench_iterative()
  puts Benchmark.measure{function3A(35)}
end

def test_bench_recursive()
  puts Benchmark.measure{function3B(35)}
end

test_bench_iterative
test_bench_recursive
#Read me for all functions as comment in  readme.md