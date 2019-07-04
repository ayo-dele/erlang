%% Based on canonical data version 1.4.0-1
%% https://github.com/exercism/problem-specifications/raw/master/exercises/bob/canonical-data.json
%% This file is automatically generated from the exercises canonical data.

-module(bob_tests).

-include_lib("erl_exercism/include/exercism.hrl").
-include_lib("eunit/include/eunit.hrl").




'1_stating_something_test_'() ->
    {"stating something",
     ?_assertMatch("Whatever.",
		   bob:response("Tom-ay-to, tom-aaaah-to."))}.

'2_shouting_test_'() ->
    {"shouting",
     ?_assertMatch("Whoa, chill out!",
		   bob:response("WATCH OUT!"))}.

'3_shouting_gibberish_test_'() ->
    {"shouting gibberish",
     ?_assertMatch("Whoa, chill out!",
		   bob:response("FCECDFCAAB"))}.

'4_asking_a_question_test_'() ->
    {"asking a question",
     ?_assertMatch("Sure.",
		   bob:response("Does this cryogenic chamber make me "
				"look fat?"))}.

'5_asking_a_numeric_question_test_'() ->
    {"asking a numeric question",
     ?_assertMatch("Sure.",
		   bob:response("You are, what, like 15?"))}.

'6_asking_gibberish_test_'() ->
    {"asking gibberish",
     ?_assertMatch("Sure.", bob:response("fffbbcbeab?"))}.

'7_talking_forcefully_test_'() ->
    {"talking forcefully",
     ?_assertMatch("Whatever.",
		   bob:response("Let's go make out behind the gym!"))}.

'8_using_acronyms_in_regular_speech_test_'() ->
    {"using acronyms in regular speech",
     ?_assertMatch("Whatever.",
		   bob:response("It's OK if you don't want to go to the "
				"DMV."))}.

'9_forceful_question_test_'() ->
    {"forceful question",
     ?_assertMatch("Calm down, I know what I'm doing!",
		   bob:response("WHAT THE HELL WERE YOU THINKING?"))}.

'10_shouting_numbers_test_'() ->
    {"shouting numbers",
     ?_assertMatch("Whoa, chill out!",
		   bob:response("1, 2, 3 GO!"))}.

'11_no_letters_test_'() ->
    {"no letters",
     ?_assertMatch("Whatever.", bob:response("1, 2, 3"))}.

'12_question_with_no_letters_test_'() ->
    {"question with no letters",
     ?_assertMatch("Sure.", bob:response("4?"))}.

'13_shouting_with_special_characters_test_'() ->
    {"shouting with special characters",
     ?_assertMatch("Whoa, chill out!",
		   bob:response("ZOMG THE %^*@#$(*^ ZOMBIES ARE COMING!!11!!1!"))}.

'14_shouting_with_no_exclamation_mark_test_'() ->
    {"shouting with no exclamation mark",
     ?_assertMatch("Whoa, chill out!",
		   bob:response("I HATE THE DMV"))}.

'15_statement_containing_question_mark_test_'() ->
    {"statement containing question mark",
     ?_assertMatch("Whatever.",
		   bob:response("Ending with ? means a question."))}.

'16_non_letters_with_question_test_'() ->
    {"non-letters with question",
     ?_assertMatch("Sure.", bob:response(":) ?"))}.

'17_prattling_on_test_'() ->
    {"prattling on",
     ?_assertMatch("Sure.",
		   bob:response("Wait! Hang on. Are you going to be OK?"))}.

'18_silence_test_'() ->
    {"silence",
     ?_assertMatch("Fine. Be that way!", bob:response([]))}.

'19_prolonged_silence_test_'() ->
    {"prolonged silence",
     ?_assertMatch("Fine. Be that way!",
		   bob:response("          "))}.

'20_alternate_silence_test_'() ->
    {"alternate silence",
     ?_assertMatch("Fine. Be that way!",
		   bob:response("\t\t\t\t\t\t\t\t\t\t"))}.

'21_multiple_line_question_test_'() ->
    {"multiple line question",
     ?_assertMatch("Whatever.",
		   bob:response("\nDoes this cryogenic chamber make me "
				"look fat?\nNo."))}.

'22_starting_with_whitespace_test_'() ->
    {"starting with whitespace",
     ?_assertMatch("Whatever.",
		   bob:response("         hmmmmmmm..."))}.

'23_ending_with_whitespace_test_'() ->
    {"ending with whitespace",
     ?_assertMatch("Sure.",
		   bob:response("Okay if like my  spacebar  quite a bit?   "))}.

'24_other_whitespace_test_'() ->
    {"other whitespace",
     ?_assertMatch("Fine. Be that way!",
		   bob:response("\n\r \t"))}.

'25_non_question_ending_with_whitespace_test_'() ->
    {"non-question ending with whitespace",
     ?_assertMatch("Whatever.",
		   bob:response("This is a statement ending with whitespace "
				"     "))}.
