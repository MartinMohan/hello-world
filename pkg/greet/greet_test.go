package greet

import "testing"

func TestMessage(t *testing.T) {
	expected := "Hello, World!"
	actual := Message()

	if actual != expected {
		t.Errorf("Message() = %q, want %q", actual, expected)
	}
}

func TestMessageNotEmpty(t *testing.T) {
	message := Message()

	if message == "" {
		t.Error("Message() returned empty string, expected non-empty message")
	}
}
