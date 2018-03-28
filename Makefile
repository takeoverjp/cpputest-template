CPPUTEST_LIBS=$(shell pkg-config --libs cpputest)
CPPUTEST_CFLAGS=$(shell pkg-config --cflags cpputest)

.cpp.o:
	g++ -c -o $@ $(CPPUTEST_CFLAGS) $<
test_foo: test_main.o test_foo.o foo.o
	g++ -o $@ $^ $(CPPUTEST_LIBS)

clean:
	rm -f *.o *~ test_foo
