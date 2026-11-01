package main

import "testing"

func TestHealth(t *testing.T) {
	if health() != "ok" {
		t.Fatal("expected ok health")
	}
}
