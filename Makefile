a.out:
	gcc MeuNome.c

clean:
	rm MeuNome

test: a.out
	bash test.sh
