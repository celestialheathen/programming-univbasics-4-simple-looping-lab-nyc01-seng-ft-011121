require 'spec_helper'

describe 'loop_message_five_times' do
  
  it 'takes in a message and outputs it five times' do
    message = "Hello World."
    expect { loop_message_five_times(message) }.to output(/Hello World.\n/).to_stdout
    expect { loop_message_five_times(message) }.to output(/Hello World.\nHello World.\nHello World.\nHello World.\nHello World./).to_stdout, "Expected the input message to be output five times using puts:\n\nHello World.\nHello World.\nHello World.\nHello World.\nHello World.\n"
  end
end

describe 'loop_message_n_times' do
  it 'takes in a message and a number outputs the message that number of times' do
    message = "Hello Moon."
    number = 5
    expect { loop_message_n_times(message, number) }.to output(/Hello Moon.\nHello Moon.\nHello Moon.\nHello Moon.\nHello Moon./).to_stdout, "Expected '#{message}' to be output #{number} times"
    message = "Hello Red Balloon."
    number = 10
    expect { loop_message_n_times(message, number) }.to output(/Hello Red Balloon.\nHello Red Balloon.\nHello Red Balloon.\nHello Red Balloon.\nHello Red Balloon.\nHello Red Balloon.\nHello Red Balloon.\nHello Red Balloon.\nHello Red Balloon.\nHello Red Balloon./).to_stdout, "Expected '#{message}' to be output #{number} times using puts"
  end

end

def output_array(arr)
  x = 0
  while arr[x] do
    puts arr[x]
    x += 1
  end
end

def return_string_array(arr)
  x = 0 
  new_arr = []
  while arr[x] do
    new_arr[x] = arr[x].to_s
    x += 1
  end
  return new_arr
end


