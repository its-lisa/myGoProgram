package main

import "testing"
import "strings"

func Test_getMessage(t *testing.T) {
	got := getMessage()

	if !strings.Contains(got, "Here is the quote I am going to test") {
		t.Errorf("got %q, wanted %q", got, "Wanted to contain:"+"Here is the quote I am going to test")
	}
}
