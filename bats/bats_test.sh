#!/usr/bin/env bats

@test "Check that we have a /tmp directory" {
	run stat /tmp
	[ $status = 0 ]
}

@test "Check that total is listed" {
	run ls -l
	[[ ${lines[0]} =~ "total" ]]
}

@test "A test I don't want to execute for now" {
	skip "feature coming"
	run foo
	[ $status -eq 0 ]
}

@test "Check to see if sshd is running" {
        run systemctl status sshd
        [[ ${lines[2]} =~ "running" ]]
}