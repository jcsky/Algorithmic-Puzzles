# this is a sample script for rumor 85 question
module Rumor85
  # return minimal messages nubmer

  def generate_data(amount_of_people = 4)
    Array.new(amount_of_people) { |i| [i, "string#{i}"] }
  end

  def minimal_message_numbers(amount_of_people = 4)
    initial_rumor_state = generate_data(amount_of_people)
    message_count = 0

    for i in 0..(initial_rumor_state.size - 2)
      initial_rumor_state[i + 1][1] << initial_rumor_state[i][1]
      message_count += 1

      next if i + 1 < initial_rumor_state.size - 1

      for j in 0..(initial_rumor_state.size - 2)
        initial_rumor_state[j][1] = initial_rumor_state[i + 1][1]
        message_count += 1
      end
    end
    initial_rumor_state
  end

  def get_message_by_forumula(amount_of_people = 4)
    2 * amount_of_people - 2
  end
end

# passing arguments
# creat n Rumor85 objects with different own rumor data
# spreading the rumor and make sure all objects have the
# same @collection_rumor data
