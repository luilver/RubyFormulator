# frozen_string_literal: true

PollType.delete_all
Poll.delete_all
Quiz.delete_all
Choice.delete_all

puts '== Inserting PollTypes =='
single_choice = PollType.create(text: 'Single Choice') # Radio Button
_multiple_choice = PollType.create(text: 'Multiple Choice') # Checkboxes

###  May be useful poll types
_yes_no = PollType.create(text: 'Yes/No') #  Choice
_true_false = PollType.create(text: 'True/False') #  Choice
_open_ended = PollType.create(text: 'Open-Ended') # Text response
_rating_scale = PollType.create(text: 'Rating Scale') # Star Rating | Number scale
#
# The votes are collected without associating them with the identity of the users.
_anonymous = PollType.create(text: 'Anonymous')
#
# Poll
spacy = Poll.create(
  question: 'What is not included in a pipeline that you can load into a spaCy?',
  poll_type: single_choice
)
o1 =  PollOption.create(text: 'A config file describing how to create the pipeline.', poll: spacy)
o2 =  PollOption.create(text: 'Binary weights to make statistical predictions.', poll: spacy)
o3 =  PollOption.create(text: 'The labelled data that the pipeline was trained on.', poll: spacy)
o4 =  PollOption.create(text: 'Strings of the pipeline\'s vocabulary and their hashes.', poll: spacy)

#
# Choices
Choice.create(type: 'BinaryChoice', selected: false, poll_option: o1)
Choice.create(type: 'BinaryChoice', selected: false, poll_option: o2)
Choice.create(type: 'BinaryChoice', selected: true, poll_option: o3)
Choice.create(type: 'BinaryChoice', selected: false, poll_option: o4)

### QUIZES FROM HERE
# **Quiz mode** is a feature within poll or survey systems where the purpose is
# not just to gather opinions but to test users' knowledge or understanding of
# a subject. In **quiz mode**, users are presented with questions, and there
# are correct and incorrect answers. Once the quiz is submitted, users
# typically receive feedback on their performance, often including: -
# **Correct/Incorrect Indicators**: After each question or at the end, users
# are shown whether their responses were right or wrong.  - **Score or Grade**:
# Users receive a score based on the number of correct answers, which may be
# presented as a percentage or points.  - **Explanations**: In some quiz modes,
# users are given explanations for the correct answers, enhancing the
# educational value.
#
## Key Features of Quiz Mode:
#
# 1. **Predefined Correct Answers**: Each question has one or more correct
# answers, unlike regular polls where all answers are subjective.
#
# 2. **Timed Option**: Quiz mode often includes a timer, requiring users to
# answer within a set period.
#
# 3. **Immediate Feedback**: Users may receive immediate feedback after
# answering each question or at the end of the quiz.
#
# 4. **Scoring System**: Users receive a score, typically based on the number
# of correct answers or the time taken to answer.
#
# 5. **Leaderboards**: Some quiz systems show rankings based on users'
# performance.
#
# 6. **Randomization**: Questions or answer choices may be randomized to
# prevent copying or memorization in a learning environment.
#
## Common Use Cases:
#
#   - **Educational Quizzes**: To assess knowledge on a subject, such as in an
#   e-learning course.  - **Engagement Games**: To boost participation through
#   gamified quizzes on websites or social media platforms.  - **Personality
#   Tests**: Sometimes quizzes include subjective or "no wrong answer"
#   questions but still offer a score or result based on responses.
#
#   In the context of a poll system, adding a quiz mode would allow you to
#   shift from opinion-based questions to knowledge-based questions with
#   definitive right and wrong answers.  _ranking = PollType.create(text:
#   'Ranking')
#
#
# Uncomment this line
# _quiz_mode = PollType.create(text: 'Quiz mode')

###  Unused poll types
# Picture          :  Users select from a set of images instead of text options.
# Matris (Grid)    :  Users answer multiple questions in a grid format, choosing an
#                     option for each row/column combination.
# Dropdown         :  Users select a single option from a dropdown menu.
# Date/Time        :  Users choose specific dates or times, often used for
#                     scheduling purposes.
# Emoji/Reaction   :  Users vote by selecting an emoji or reaction to express
#                     their opinion.
# Slider           :  Users select a value on a continuous scale or slider,
#                     typically to rate something or measure intensity.
# Multiple Textbox :  Users fill in several textboxes, responding to multiple
#                     text-based questions.
# File Upload      :  Users submit a file as their response (for specific use
#                     cases like surveys with attachments).
# Hidden           :  The results are hidden from the users until the poll ends,
#                     commonly used to avoid influencing others' votes.

# Uncomment all these lines 'til the end
puts '== Inserting Quiz =='
q100 = Quiz.create(title: 'Civics Questions for the Naturalization Test')

# rubocop:disable Layout/LineLength
puts '== Inserting Polls =='
one = Poll.create(question: 'What is the supreme law of the land?', poll_type: single_choice, quiz: q100)
PollOption.create(text: 'the Constitution', poll: one)

two = Poll.create(question: 'What does the Constitution do?', poll_type: single_choice, quiz: q100)
PollOption.create(text: 'sets up the government', poll: two)
PollOption.create(text: 'defines the government', poll: two)
PollOption.create(text: 'protects basic rights of Americans', poll: two)

three = Poll.create(
  question: 'The idea of self-government is in the first three words of the Constitution. What are these words?', poll_type: single_choice, quiz: q100
)
PollOption.create(text: 'We the People', poll: three)

four = Poll.create(question: 'What is an amendment?', poll_type: single_choice, quiz: q100)
PollOption.create(text: 'a change (to the Constitution)', poll: four)
PollOption.create(text: 'an addition (to the Constitution)', poll: four)

five = Poll.create(question: 'What do we call the first ten amendments to the Constitution?', poll_type: single_choice,
                   quiz: q100)
PollOption.create(text: 'the Bill of Rights', poll: five)

six = Poll.create(question: 'What is one right or freedom from the First Amendment?', poll_type: single_choice,
                  quiz: q100)
PollOption.create(text: 'speech', poll: six)
PollOption.create(text: 'religion', poll: six)
PollOption.create(text: 'assembly', poll: six)
PollOption.create(text: 'press', poll: six)
PollOption.create(text: 'petition the government', poll: six)

seven = Poll.create(question: 'How many amendments does the Constitution have?', poll_type: single_choice, quiz: q100)
PollOption.create(text: '27', poll: seven)

eight = Poll.create(question: ' What did the Declaration of Independence do?', poll_type: single_choice, quiz: q100)
PollOption.create(text: 'announced our independence (from Great Britain)', poll: eight)
PollOption.create(text: 'declared our independence (from Great Britain)', poll: eight)
PollOption.create(text: 'said that the United States is free (from Great Britain)', poll: eight)

nine = Poll.create(question: 'What are two rights in the Declaration of Independence?', poll_type: multiple_choice,
                   quiz: q100)
PollOption.create(text: 'life', poll: nine)
PollOption.create(text: 'liberty', poll: nine)
PollOption.create(text: 'pursuit of happiness', poll: nine)

ten = Poll.create(question: 'What is freedom of religion?', poll_type: single_choice, quiz: q100)
PollOption.create(text: 'You can practice any religion, or not practice a religion', poll: ten)

eleven = Poll.create(question: 'What is the economic system in the United States?', poll_type: single_choice,
                     quiz: q100)
PollOption.create(text: 'capitalist economy', poll: eleven)
PollOption.create(text: 'market economy', poll: eleven)

twelve = Poll.create(question: 'What is the “rule of law”?', poll_type: single_choice, quiz: q100)
PollOption.create(text: 'Everyone must follow the law', poll: twelve)
PollOption.create(text: 'Leaders must obey the law', poll: twelve)
PollOption.create(text: 'Government must obey the law', poll: twelve)
PollOption.create(text: 'No one is above the law', poll: twelve)

thirteen = Poll.create(question: 'Name one branch or part of the government', poll_type: single_choice, quiz: q100)
PollOption.create(text: 'President', poll: thirteen)
PollOption.create(text: 'executive', poll: thirteen)
PollOption.create(text: 'the courts', poll: thirteen)
PollOption.create(text: 'judicial', poll: thirteen)

fourteen = Poll.create(question: 'What stops one branch of government from becoming too powerful?',
                       poll_type: single_choice, quiz: q100)
PollOption.create(text: 'checks and balances', poll: fourteen)
PollOption.create(text: 'separation of powers', poll: fourteen)

fiveteen = Poll.create(question: 'Who is in charge of the executive branch?', poll_type: single_choice, quiz: q100)
PollOption.create(text: 'the President', poll: fiveteen)

sixteen = Poll.create(question: 'Who makes federal laws?', poll_type: single_choice, quiz: q100)
PollOption.create(text: 'Congress', poll: sixteen)
PollOption.create(text: 'Senate and House (of Representatives)', poll: sixteen)
PollOption.create(text: '(U.S. or national) legislature', poll: sixteen)

seventeen = Poll.create(question: 'What are the two parts of the U.S. Congress?', poll_type: single_choice, quiz: q100)
PollOption.create(text: 'the Senate and House (of Representatives)', poll: seventeen)

eighteen = Poll.create(question: 'How many U.S. Senators are there?', poll_type: single_choice, quiz: q100)
PollOption.create(text: '100', poll: eighteen)

nineteen = Poll.create(question: 'We elect a U.S. Senator for how many years?', poll_type: single_choice, quiz: q100)
PollOption.create(text: '6', poll: nineteen)

_twenty = Poll.create(question: 'Who is one of your state’s U.S. Senators now?', poll_type: single_choice, quiz: q100)

twentyone = Poll.create(question: 'The House of Representatives has how many voting members?',
                        poll_type: single_choice, quiz: q100)
PollOption.create(text: '435', poll: twentyone)

twentytwo = Poll.create(question: 'We elect a U.S. Representative for how many years?', poll_type: single_choice,
                        quiz: q100)
PollOption.create(text: '2', poll: twentytwo)

_twentythree = Poll.create(question: 'Name your U.S. Representative', poll_type: single_choice, quiz: q100)

twentyfour = Poll.create(question: 'Who does a U.S. Senator represent?', poll_type: single_choice, quiz: q100)
PollOption.create(text: 'all people of the state', poll: twentyfour)

twentyfive = Poll.create(question: 'Why do some states have more Representatives than other states?',
                         poll_type: single_choice, quiz: q100)
PollOption.create(text: '(because of) the state’ s population', poll: twentyfive)
PollOption.create(text: '(because) they have more people', poll: twentyfive)
PollOption.create(text: '(because) some states have more people', poll: twentyfive)

twentysix = Poll.create(question: 'We elect a President for how many years?', poll_type: single_choice, quiz: q100)
PollOption.create(text: '4', poll: twentysix)

twentyseven = Poll.create(question: 'In what month do we vote for President?', poll_type: single_choice, quiz: q100)
PollOption.create(text: 'November', poll: twentyseven)

_twentyeight = Poll.create(question: 'What is the name of the President of the United States now?',
                           poll_type: single_choice, quiz: q100)

_twentynine = Poll.create(question: 'What is the name of the Vice President of the United States now?',
                          poll_type: single_choice, quiz: q100)

thirty = Poll.create(question: 'If the President can no longer serve, who becomes President?',
                     poll_type: single_choice, quiz: q100)
PollOption.create(text: 'the Vice President', poll: thirty)

thirtyone = Poll.create(
  question: 'If both the President and the Vice President can no longer serve, who becomes President?', poll_type: single_choice, quiz: q100
)
PollOption.create(text: 'the Speaker of the House', poll: thirtyone)

thirtytwo = Poll.create(question: 'Who is the Commander in Chief of the military?', poll_type: single_choice,
                        quiz: q100)
PollOption.create(text: 'the President', poll: thirtytwo)

thirtythree = Poll.create(question: ' Who signs bills to become laws?', poll_type: single_choice, quiz: q100)
PollOption.create(text: 'the President', poll: thirtythree)

thirtyfour = Poll.create(question: 'Who vetoes bills?', poll_type: single_choice, quiz: q100)
PollOption.create(text: 'the President', poll: thirtyfour)

thirtyfive = Poll.create(question: 'What does the President’s Cabinet do?', poll_type: single_choice, quiz: q100)
PollOption.create(text: 'advises the President', poll: thirtyfive)

thirtysix = Poll.create(question: 'What are two Cabinet-level positions?', poll_type: multiple_choice, quiz: q100)
PollOption.create(text: 'Secretary of Agriculture', poll: thirtysix)
PollOption.create(text: 'Secretary of Commerce', poll: thirtysix)
PollOption.create(text: 'Secretary of Defense', poll: thirtysix)
PollOption.create(text: 'Secretary of Education', poll: thirtysix)
PollOption.create(text: 'Secretary of Health and Human Services', poll: thirtysix)
PollOption.create(text: 'Secretary of Homeland Security', poll: thirtysix)
PollOption.create(text: 'Secretary of the Interior', poll: thirtysix)
PollOption.create(text: 'Secretary of Labor', poll: thirtysix)
PollOption.create(text: 'Secretary of State', poll: thirtysix)
PollOption.create(text: 'Secretary of Transportation', poll: thirtysix)
PollOption.create(text: 'Secretary of the Treasury', poll: thirtysix)
PollOption.create(text: 'Secretary of Veterans Affairs', poll: thirtysix)
PollOption.create(text: 'Attorney General', poll: thirtysix)
PollOption.create(text: 'Vice President', poll: thirtysix)

thirtyseven = Poll.create(question: 'What does the judicial branch do?', poll_type: single_choice, quiz: q100)
PollOption.create(text: 'reviews laws', poll: thirtyseven)
PollOption.create(text: 'explains laws', poll: thirtyseven)
PollOption.create(text: 'resolves disputes (disagreements)', poll: thirtyseven)
PollOption.create(text: 'decides if a law goes against the Constitution', poll: thirtyseven)

thirtyeight = Poll.create(question: 'What is the highest court in the United States?', poll_type: single_choice,
                          quiz: q100)
PollOption.create(text: 'the Supreme Court', poll: thirtyeight)

_thirtynine = Poll.create(question: 'How many justices are on the Supreme Court?', poll_type: single_choice, quiz: q100)

_fourty = Poll.create(question: 'Who is the Chief Justice of the United States now?', poll_type: single_choice,
                      quiz: q100)

fourtyone = Poll.create(
  question: 'Under our Constitution, some powers belong to the federal government. What is one power of the federal', poll_type: single_choice, quiz: q100
)
PollOption.create(text: 'to print money', poll: fourtyone)
PollOption.create(text: 'to declare war', poll: fourtyone)
PollOption.create(text: 'to create an army', poll: fourtyone)
PollOption.create(text: 'to make treaties', poll: fourtyone)

fourtytwo = Poll.create(
  question: 'Under our Constitution, some powers belong to the states. What is one power of the states?', poll_type: single_choice, quiz: q100
)
PollOption.create(text: 'provide schooling and education', poll: fourtytwo)
PollOption.create(text: 'provide protection (police)', poll: fourtytwo)
PollOption.create(text: 'provide safety (fire departments)', poll: fourtytwo)
PollOption.create(text: 'give a driver’ s license', poll: fourtytwo)
PollOption.create(text: 'approve zoning and land use', poll: fourtytwo)

_fourtythree = Poll.create(question: 'Who is the Governor of your state now?', poll_type: single_choice, quiz: q100)

_fourtyfour = Poll.create(question: 'What is the capital of your state?', poll_type: single_choice, quiz: q100)

fourtyfive = Poll.create(question: 'What are the two major political parties in the United States?',
                         poll_type: single_choice, quiz: q100)
PollOption.create(text: 'Democratic and Republican', poll: fourtyfive)

_fourtysix = Poll.create(question: 'What is the political party of the President now?', poll_type: single_choice,
                         quiz: q100)

_fourtyseven = Poll.create(question: 'What is the name of the Speaker of the House of Representatives now?',
                           poll_type: single_choice, quiz: q100)

fourtyeight = Poll.create(
  question: 'There are four amendments to the Constitution about who can vote. Describe one of them.', poll_type: single_choice, quiz: q100
)
PollOption.create(text: 'Citizens eighteen (18) and older (can vote)', poll: fourtyeight)
PollOption.create(text: 'You don’t have to pay (a poll tax) to vote', poll: fourtyeight)
PollOption.create(text: 'Any citizen can vote. (Women and men can vote.)', poll: fourtyeight)
PollOption.create(text: 'A male citizen of any race (can vote)', poll: fourtyeight)

fourtynine = Poll.create(question: 'What is one responsibility that is only for United States citizens?',
                         poll_type: single_choice, quiz: q100)
PollOption.create(text: 'serve on a jury', poll: fourtynine)
PollOption.create(text: 'vote in a federal election', poll: fourtynine)

fivety = Poll.create(question: 'Name one right only for United States citizens', poll_type: single_choice, quiz: q100)
PollOption.create(text: 'vote in a federal election', poll: fivety)
PollOption.create(text: 'run for federal office', poll: fivety)

fivetyone = Poll.create(question: 'What are two rights of everyone living in the United States?',
                        poll_type: multiple_choice, quiz: q100)
PollOption.create(text: 'freedom of expression', poll: fivetyone)
PollOption.create(text: 'freedom of speech', poll: fivetyone)
PollOption.create(text: 'freedom of assembly', poll: fivetyone)
PollOption.create(text: 'freedom to petition the government', poll: fivetyone)
PollOption.create(text: 'freedom of religion', poll: fivetyone)

fivetytwo = Poll.create(question: 'What do we show loyalty to when we say the Pledge of Allegiance?',
                        poll_type: single_choice, quiz: q100)
PollOption.create(text: 'the United States', poll: fivetytwo)
PollOption.create(text: 'the flag', poll: fivetytwo)

fivetythree = Poll.create(question: 'What is one promise you make when you become a United States citizen?',
                          poll_type: single_choice, quiz: q100)
PollOption.create(text: 'give up loyalty to other countries', poll: fivetythree)
PollOption.create(text: 'defend the Constitution and laws of the United States', poll: fivetythree)
PollOption.create(text: 'obey the laws of the United States', poll: fivetythree)
PollOption.create(text: 'serve in the U.S. military (if needed)', poll: fivetythree)
PollOption.create(text: 'serve (do important work for) the nation (if needed)', poll: fivetythree)
PollOption.create(text: 'be loyal to the United States', poll: fivetythree)

fivetyfour = Poll.create(question: 'ow old do citizens have to be to vote for President?', poll_type: single_choice,
                         quiz: q100)
PollOption.create(text: 'eighteen (18) and older', poll: fivetyfour)

fivetyfive = Poll.create(question: 'What are two ways that Americans can participate in their democracy?',
                         poll_type: multiple_choice, quiz: q100)
PollOption.create(text: 'vote', poll: fivetyfive)
PollOption.create(text: 'join a political party', poll: fivetyfive)
PollOption.create(text: 'help with a campaign', poll: fivetyfive)
PollOption.create(text: 'join a civic grou', poll: fivetyfive)
PollOption.create(text: 'join a community group', poll: fivetyfive)
PollOption.create(text: 'give an elected official your opinion on an issue', poll: fivetyfive)
PollOption.create(text: 'call Senators and Representatives', poll: fivetyfive)
PollOption.create(text: 'publicly support or oppose an issue or policy', poll: fivetyfive)
PollOption.create(text: ' run for office', poll: fivetyfive)
PollOption.create(text: 'write to a newspaper', poll: fivetyfive)

fivetysix = Poll.create(question: 'When is the last day you can send in federal income tax forms?',
                        poll_type: single_choice, quiz: q100)
PollOption.create(text: 'April 15', poll: fivetysix)

fivetyseven = Poll.create(question: 'When must all men register for the Selective Service?', poll_type: single_choice,
                          quiz: q100)
PollOption.create(text: 'at age eighteen (18)', poll: fivetyseven)
PollOption.create(text: 'between eighteen (18) and twenty-six (26)', poll: fivetyseven)

fivetyeight = Poll.create(question: 'What is one reason colonists came to America?', poll_type: single_choice,
                          quiz: q100)
PollOption.create(text: 'freedom', poll: fivetyeight)
PollOption.create(text: 'political liberty', poll: fivetyeight)
PollOption.create(text: 'religious freedom', poll: fivetyeight)
PollOption.create(text: 'economic opportunity', poll: fivetyeight)
PollOption.create(text: 'practice their religion', poll: fivetyeight)
PollOption.create(text: 'escape persecution', poll: fivetyeight)

fivetynine = Poll.create(question: 'Who lived in America before the Europeans arrived?', poll_type: single_choice,
                         quiz: q100)
PollOption.create(text: 'American Indians', poll: fivetynine)
PollOption.create(text: 'Native Americans', poll: fivetynine)

sixty = Poll.create(question: 'What group of people was taken to America and sold as slaves?',
                    poll_type: single_choice, quiz: q100)
PollOption.create(text: 'Africans', poll: sixty)
PollOption.create(text: 'people from Africa', poll: sixty)

sixtyone = Poll.create(question: 'Why did the colonists fight the British?', poll_type: single_choice, quiz: q100)
PollOption.create(text: 'because of high taxes (taxation without representation)', poll: sixtyone)
PollOption.create(text: 'because the British army stayed in their houses (boarding, quartering)', poll: sixtyone)
PollOption.create(text: 'because they didn’t have self-government', poll: sixtyone)

sixtytwo = Poll.create(question: 'Who wrote the Declaration of Independence?', poll_type: single_choice, quiz: q100)
PollOption.create(text: 'Thomeas Jefferson', poll: sixtytwo)

sixtythree = Poll.create(question: 'When was the Declaration of Independence adopted?', poll_type: single_choice,
                         quiz: q100)
PollOption.create(text: 'July 4, 1776', poll: sixtythree)

sixtyfour = Poll.create(question: 'There were 13 original states. Name three.', poll_type: single_choice, quiz: q100)
PollOption.create(text: 'New Hampshire', poll: sixtyfour)
PollOption.create(text: 'Massachusetts', poll: sixtyfour)
PollOption.create(text: 'Rhode Island', poll: sixtyfour)
PollOption.create(text: 'Connecticut', poll: sixtyfour)
PollOption.create(text: 'New York', poll: sixtyfour)
PollOption.create(text: 'New Jersey', poll: sixtyfour)
PollOption.create(text: 'Pennsylvania', poll: sixtyfour)
PollOption.create(text: 'Delaware', poll: sixtyfour)
PollOption.create(text: 'Maryland', poll: sixtyfour)
PollOption.create(text: 'Virginia', poll: sixtyfour)
PollOption.create(text: 'North Carolina', poll: sixtyfour)
PollOption.create(text: 'South Carolina', poll: sixtyfour)
PollOption.create(text: 'Georgia', poll: sixtyfour)

sixtyfive = Poll.create(question: 'What happened at the Constitutional Convention?', poll_type: single_choice,
                        quiz: q100)
PollOption.create(text: 'The Constitution was written', poll: sixtyfive)
PollOption.create(text: 'The Founding Fathers wrote the Constitution', poll: sixtyfive)

sixtysix = Poll.create(question: 'When was the Constitution written?', poll_type: single_choice, quiz: q100)
PollOption.create(text: '1787', poll: sixtysix)

sixtyseven = Poll.create(
  question: 'The Federalist Papers supported the passage of the U.S. Constitution. Name one of the writers.', poll_type: single_choice, quiz: q100
)
PollOption.create(text: '(James) Madison', poll: sixtyseven)
PollOption.create(text: '(Alexander) Hamilton', poll: sixtyseven)
PollOption.create(text: '(John) Jay', poll: sixtyseven)
PollOption.create(text: 'Publius', poll: sixtyseven)

sixtyeight = Poll.create(question: 'What is one thing Benjamin Franklin is famous for?', poll_type: single_choice,
                         quiz: q100)
PollOption.create(text: 'U.S. diplomat', poll: sixtyeight)
PollOption.create(text: 'oldest member of the Constitutional Convention', poll: sixtyeight)
PollOption.create(text: 'first Postmaster General of the United States', poll: sixtyeight)
PollOption.create(text: 'writer of “Poor Richard’ s Almanac”', poll: sixtyeight)
PollOption.create(text: 'started the first free libraries', poll: sixtyeight)

sixtynine = Poll.create(question: 'Who is the “Father of Our Country”?', poll_type: single_choice, quiz: q100)
PollOption.create(text: '(George) Washington', poll: sixtynine)

seventy = Poll.create(question: 'Who was the first President?', poll_type: single_choice, quiz: q100)
PollOption.create(text: '(George) Washington', poll: seventy)

seventyone = Poll.create(question: 'What territory did the United States buy from France in 1803?',
                         poll_type: single_choice, quiz: q100)
PollOption.create(text: 'the Louisiana Territory', poll: seventyone)
PollOption.create(text: 'Louisiana', poll: seventyone)

seventytwo = Poll.create(question: 'Name one war fought by the United States in the 1800s', poll_type: single_choice,
                         quiz: q100)
PollOption.create(text: 'War of 1812', poll: seventytwo)
PollOption.create(text: 'Mexican-American War', poll: seventytwo)
PollOption.create(text: 'Civil War', poll: seventytwo)
PollOption.create(text: 'Spanish-American War', poll: seventytwo)

seventythree = Poll.create(question: 'Name the U.S. war between the North and the South', poll_type: single_choice,
                           quiz: q100)
PollOption.create(text: 'the Civil War', poll: seventythree)
PollOption.create(text: 'the War between the States', poll: seventythree)

seventyfour = Poll.create(question: 'Name one problem that led to the Civil War', poll_type: single_choice, quiz: q100)
PollOption.create(text: 'slavery', poll: seventyfour)
PollOption.create(text: 'economic reasons', poll: seventyfour)
PollOption.create(text: 'states’ rights', poll: seventyfour)

seventyfive = Poll.create(question: 'What was one important thing that Abraham Lincoln did?', poll_type: single_choice,
                          quiz: q100)
PollOption.create(text: 'freed the slaves (Emancipation Proclamation)', poll: seventyfive)
PollOption.create(text: 'saved (or preserved) the Union', poll: seventyfive)
PollOption.create(text: 'led the United States during the Civil War', poll: seventyfive)

seventysix = Poll.create(question: 'What did the Emancipation Proclamation do?', poll_type: single_choice, quiz: q100)
PollOption.create(text: 'freed the slaves', poll: seventysix)
PollOption.create(text: 'freed slaves in the Confederacy', poll: seventysix)
PollOption.create(text: 'freed slaves in the Confederate states', poll: seventysix)
PollOption.create(text: 'freed slaves in most Southern states', poll: seventysix)

seventyseven = Poll.create(question: ' What did Susan B. Anthony do?', poll_type: single_choice, quiz: q100)
PollOption.create(text: 'fought for women’s right', poll: seventyseven)
PollOption.create(text: 'fought for civil rights', poll: seventyseven)

seventyeight = Poll.create(question: 'Name one war fought by the United States in the 1900s', poll_type: single_choice,
                           quiz: q100)
PollOption.create(text: 'World War I', poll: seventyeight)
PollOption.create(text: 'World War II', poll: seventyeight)
PollOption.create(text: 'Korean War', poll: seventyeight)
PollOption.create(text: 'Vietnam War', poll: seventyeight)
PollOption.create(text: '(Persian) Gulf War', poll: seventyeight)

seventynine = Poll.create(question: 'Who was President during World War I?', poll_type: single_choice, quiz: q100)
PollOption.create(text: '(Woodrow) Wilson', poll: seventynine)

eighty = Poll.create(question: 'Who was President during the Great Depression and World War II?',
                     poll_type: single_choice, quiz: q100)
PollOption.create(text: '(Franklin) Roosevelt', poll: eighty)

eightyone = Poll.create(question: 'Who did the United States fight in World War II', poll_type: single_choice,
                        quiz: q100)
PollOption.create(text: 'Japan, Germany, and Italy', poll: eightyone)

eightytwo = Poll.create(question: 'Before he was President, Eisenhower was a general. What war was he in?',
                        poll_type: single_choice, quiz: q100)
PollOption.create(text: 'World War II', poll: eightytwo)

eightythree = Poll.create(question: 'During the Cold War, what was the main concern of the United States?',
                          poll_type: single_choice, quiz: q100)
PollOption.create(text: 'Communism', poll: eightythree)

eightyfour = Poll.create(question: 'What movement tried to end racial discrimination?', poll_type: single_choice,
                         quiz: q100)
PollOption.create(text: 'civil rights (movement)', poll: eightyfour)

eightyfive = Poll.create(question: 'What did Martin Luther King, Jr. do?', poll_type: single_choice, quiz: q100)
PollOption.create(text: 'fought for civil rights', poll: eightyfive)
PollOption.create(text: 'worked for equality for all Americans', poll: eightyfive)

eightysix = Poll.create(question: 'What major event happened on September 11, 2001, in the United States?',
                        poll_type: single_choice, quiz: q100)
PollOption.create(text: 'Terrorists attacked the United States', poll: eightysix)

eightyseven = Poll.create(question: 'Name one American Indian tribe in the United States', poll_type: single_choice,
                          quiz: q100)
PollOption.create(text: 'Cherokee', poll: eightyseven)
PollOption.create(text: 'Navajo', poll: eightyseven)
PollOption.create(text: 'Sioux', poll: eightyseven)
PollOption.create(text: 'Chippewa', poll: eightyseven)
PollOption.create(text: 'Choctaw', poll: eightyseven)
PollOption.create(text: 'Pueblo', poll: eightyseven)
PollOption.create(text: 'Apache', poll: eightyseven)
PollOption.create(text: 'Iroquois', poll: eightyseven)
PollOption.create(text: 'Creek', poll: eightyseven)
PollOption.create(text: 'Blackfeet', poll: eightyseven)
PollOption.create(text: 'Seminole', poll: eightyseven)
PollOption.create(text: 'Cheyenne', poll: eightyseven)
PollOption.create(text: 'Arawak', poll: eightyseven)
PollOption.create(text: 'Shawnee', poll: eightyseven)
PollOption.create(text: 'Mohegan', poll: eightyseven)
PollOption.create(text: 'Huron', poll: eightyseven)
PollOption.create(text: 'Oneida', poll: eightyseven)
PollOption.create(text: 'Lakota', poll: eightyseven)
PollOption.create(text: 'Crow', poll: eightyseven)
PollOption.create(text: 'Teton', poll: eightyseven)
PollOption.create(text: 'Hopi', poll: eightyseven)
PollOption.create(text: 'Inuit', poll: eightyseven)

eightyeight = Poll.create(question: 'Name one of the two longest rivers in the United States',
                          poll_type: single_choice, quiz: q100)
PollOption.create(text: 'Missouri (River)', poll: eightyeight)
PollOption.create(text: 'Mississippi (River)', poll: eightyeight)

eightynine = Poll.create(question: 'What ocean is on the West Coast of the United States?', poll_type: single_choice,
                         quiz: q100)
PollOption.create(text: 'Pacific (Ocean)', poll: eightynine)

ninety = Poll.create(question: 'What ocean is on the East Coast of the United States?', poll_type: single_choice,
                     quiz: q100)
PollOption.create(text: 'Pacific (Ocean)', poll: ninety)

ninetyone = Poll.create(question: 'Name one U.S. territory', poll_type: single_choice, quiz: q100)
PollOption.create(text: 'Puerto Rico', poll: ninetyone)
PollOption.create(text: 'U.S. Virgin Islands', poll: ninetyone)
PollOption.create(text: 'American Samoa', poll: ninetyone)
PollOption.create(text: 'Northern Mariana Islands', poll: ninetyone)
PollOption.create(text: 'Guam', poll: ninetyone)

ninetytwo = Poll.create(question: 'Name one state that borders Canada', poll_type: single_choice, quiz: q100)
PollOption.create(text: 'Maine', poll: ninetytwo)
PollOption.create(text: 'New Hampshire', poll: ninetytwo)
PollOption.create(text: 'Vermont', poll: ninetytwo)
PollOption.create(text: 'New York', poll: ninetytwo)
PollOption.create(text: 'Pennsylvania', poll: ninetytwo)
PollOption.create(text: 'Ohio', poll: ninetytwo)
PollOption.create(text: 'Michigan', poll: ninetytwo)
PollOption.create(text: 'Minnesota', poll: ninetytwo)
PollOption.create(text: 'North Dakota', poll: ninetytwo)
PollOption.create(text: 'Montana', poll: ninetytwo)
PollOption.create(text: 'Idaho', poll: ninetytwo)
PollOption.create(text: 'Washington', poll: ninetytwo)
PollOption.create(text: 'Alaska', poll: ninetytwo)

ninetythree = Poll.create(question: 'Name one state that borders Mexico', poll_type: single_choice, quiz: q100)
PollOption.create(text: 'California', poll: ninetythree)
PollOption.create(text: 'Arizona', poll: ninetythree)
PollOption.create(text: 'New Mexico', poll: ninetythree)
PollOption.create(text: 'Texas', poll: ninetythree)

ninetyfour = Poll.create(question: 'What is the capital of the United States?', poll_type: single_choice, quiz: q100)
PollOption.create(text: 'Washington, D.C.', poll: ninetyfour)

ninetyfive = Poll.create(question: 'Where is the Statue of Liberty?', poll_type: single_choice, quiz: q100)
PollOption.create(text: 'New York (Harbor)', poll: ninetyfive)
PollOption.create(text: 'Liberty Island', poll: ninetyfive)

ninetysix = Poll.create(question: 'Why does the flag have 13 stripes?', poll_type: single_choice, quiz: q100)
PollOption.create(text: 'because there were 13 original colonies', poll: ninetysix)
PollOption.create(text: 'because the stripes represent the original colonies', poll: ninetysix)

ninetyseven = Poll.create(question: 'Why does the flag have 50 stars?', poll_type: single_choice, quiz: q100)
PollOption.create(text: 'because there is one star for each stat', poll: ninetyseven)
PollOption.create(text: 'because each star represents a state', poll: ninetyseven)
PollOption.create(text: 'because there are 50 states', poll: ninetyseven)

ninetyeight = Poll.create(question: 'What is the name of the national anthem?', poll_type: single_choice, quiz: q100)
PollOption.create(text: 'The Star-Spangled Banner', poll: ninetyeight)

ninetynine = Poll.create(question: 'When do we celebrate Independence Day?', poll_type: single_choice, quiz: q100)
PollOption.create(text: 'July 4', poll: ninetynine)

onehundred = Poll.create(question: 'Name two national U.S. holidays', poll_type: single_choice, quiz: q100)
PollOption.create(text: 'New Year’ s Day', poll: onehundred)
PollOption.create(text: 'Martin Luther King, Jr. Day', poll: onehundred)
PollOption.create(text: 'Presidents’ Day', poll: onehundred)
PollOption.create(text: 'Memorial Day', poll: onehundred)
PollOption.create(text: 'Independence Day', poll: onehundred)
PollOption.create(text: 'Labor Day', poll: onehundred)
PollOption.create(text: 'Columbus Day', poll: onehundred)
PollOption.create(text: 'Veterans Day', poll: onehundred)
PollOption.create(text: 'Thanksgiving', poll: onehundred)
PollOption.create(text: 'Christmas', poll: onehundred)
# rubocop:enable Layout/LineLength
