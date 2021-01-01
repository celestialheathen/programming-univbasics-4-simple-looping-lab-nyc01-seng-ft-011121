def loop_message_five_times(msg)
  5.times do
    puts msg
  end
end

def loop_message_n_times(msg, times)
  times.times do
    puts msg
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

describe 'output_array' do

  it 'takes in a message and a number outputs the message that number of times' do
    array = ["Be yourself;", "everyone else is already taken", "- Oscar Wilde"]
    expect { output_array(array) }.to output(/Be yourself;\neveryone else is already taken\n- Oscar Wilde/).to_stdout, "Expected:\n\nBe yourself;\neveryone else is already taken\n- Oscar Wilde"
    array = [5, 4, 3, 2, 1]
    expect { output_array(array) }.to output(/5\n4\n3\n2\n1\n/).to_stdout
  end
end

describe 'return_string_array' do
  it 'takes in an array of elements, converts them to strings and returns them all in a new array' do
    array = [5, 4, 3, 2, 1]
    expect(return_string_array(array)).to eq(["5", "4", "3", "2", "1"])
  end
end
