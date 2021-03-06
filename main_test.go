package main_test

import "testing"

func Test(t *testing.T) {
	want := "foo"
	got := "foo"
	if got != want {
		t.Fatalf("got %q, want %q", got, want)
	}
}
