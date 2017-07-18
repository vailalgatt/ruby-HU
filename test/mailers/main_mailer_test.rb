require 'test_helper'

class MainMailerTest < ActionMailer::TestCase
  test "notify_question_author" do

    question = Question.create email: 'author@question.com', body: 'a test question'
    answer = Answer.create email: 'author@answer.com', body: 'a test answer'

    question.answers << answer

    mail = MainMailer.notify_question_author(answer)
    assert_equal "Notify question author", mail.subject

    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    
    assert_match "Hi", mail.body.encoded
  end

end
