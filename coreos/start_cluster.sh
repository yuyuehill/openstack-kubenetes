#!/bin/sh

LISTEN=10.0.0.4
etcd -peer-addr $LISTEN:7001 -addr $LISTEN:4001 -data-dir machines/machine1 -name machine1
etcd -peer-addr $LISTEN:7002 -addr $LISTEN:4002 -peers $LISTEN:7001,$LISTEN:7003 -data-dir machines/machine2 -name machine2
etcd -peer-addr $LISTEN:7003 -addr $LISTEN:4003 -peers $LISTEN:7001,$LISTEN:7002 -data-dir machines/machine3 -name machine3
