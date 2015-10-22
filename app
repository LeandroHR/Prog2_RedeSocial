import java.util.Scanner;
public class app 
{
	public static void main(String[] args) 
	{
		Perfil[] p = new Perfil[20];
		//int cont = 0;
		int i = 0;
		int aux = 0;
		Scanner input = new Scanner(System.in);
		int controller = 0;
		String nome;
		String nome2;
		String usuario;
		String funcao;
		String linguagens;
		String metodologia;
		String localizacao;
		char sexo;
		String formacao;
		String post;
		String comentario;
		
		do
		{
			System.out.println("\n1 - Cadastrar perfil");
			System.out.println("2 - Excluir perfil");
			System.out.println("3 - Escrever postagem");
			System.out.println("4 - Comentar postagem");
			System.out.println("5 - Excluir postagem");
			System.out.println("6 - Visualizar perfil");
			System.out.println("7 - Visualizar posts de um perfil");
			System.out.println("8 - Visualizar amizades");
			System.out.println("9 - Solicitar amizade");
			System.out.println("10 - Aceitar amizades");
			System.out.println("11 - Cancelar amizade");
			System.out.println("99 - Sair\n");
			
			controller = input.nextInt();
			
			switch(controller)
			{
			case 1: 
				i = 0;
				usuario = input.nextLine();
				System.out.println("Digite o usuário: ");
				usuario = input.nextLine();
				System.out.println("Digite o seu nome: ");
				nome = input.nextLine();
				System.out.println("Digite sua função: ");
				funcao = input.nextLine();
				System.out.println("Digite a(s) linguagem(s) em que você possui experiência: ");
				linguagens = input.nextLine();
				System.out.println("Digite as metodologias que você utiliza: ");
				metodologia = input.nextLine();
				System.out.println("Digite o seu endereço: ");
				localizacao = input.nextLine();
				do
				{
					System.out.println("Sexo (M)asculino / (F)eminino: ");
					sexo = input.next().charAt(0);
				}while(sexo != 'M' || sexo != 'M');
				System.out.println("Digite a sua formação: ");
				formacao = input.nextLine();
				formacao = input.nextLine();
				
				while(p[i] != null)
				{
					if(i >= 19)
					{
						System.out.println("Não é possível cadastrar mais perfis.");
						break;
					}
					i++;
				}
				if(i >= 20)
				{
					break;
				}
				p[i] = new Perfil(nome, usuario, funcao, linguagens, metodologia, localizacao, sexo, formacao);
				i = 0;
				break;
				
			case 2:
				i = 0;
				System.out.println("Digite o nome do perfil: ");
				nome = input.nextLine();
				nome = input.nextLine();
				
				for(i=0; i<19; i++)
				{
					if(p[i].getNome().equals(nome))
					{
						p[i] = null;
						break;
					}
					System.out.println("Perfil não encontrado!");
				}
				break;
			
			case 3:
				i = 0;
				
				System.out.println("Ecreva uma postagem: ");
				post = input.nextLine();
				post = input.nextLine();
				
				System.out.println("Escreva o nome do perfil no qual deseja postar: ");
				nome = input.nextLine();
				
				for(i=0; i<19; i++)
				{
					if(p[i]  != null &&  p[i].getNome().equals(nome))
					{
						p[i].criarPost(post);
						break;
					}
				}
				if(p[i] == null)
				{
					System.out.println("Perfil não encontrado!");
				}
				break;
				
			case 4:
				aux = 0;
				System.out.println("Digite o nome do perfil no qual você deseja comentar uma postagem: ");
				nome = input.nextLine();
				nome = input.nextLine();
				
				while(aux<1 || aux>98)
				{
					System.out.println("Qual o número da postagem que você deseja comentar: ");
					aux = input.nextInt();
				}
				
				System.out.println("Escreva seu comentario: ");
				comentario = input.nextLine();
				comentario = input.nextLine();
				
				for(i=0; i<19; i++)
				{
					if(p[i]  != null &&  p[i].getNome().equals(nome))
					{
						p[i].getP(aux).criarComent(comentario);
						break;
					}
				}
				if(p[i] == null)
				{
					System.out.println("Perfil não encontrado!");
				}
				break;
				
			case 5:
				System.out.println("Digite o nome do perfil no qual você deseja excluir uma postagem: ");
				nome = input.nextLine();
				nome = input.nextLine();
				while(aux<1 || aux>98)
				{
					System.out.println("Qual o número da postagem que você deseja excluir? ");
					aux = input.nextInt();
				}
				
				for(i=0; i<19; i++)
				{
					if(p[i]  != null &&  p[i].getNome().equals(nome))
					{
						p[i].excluirPost(aux);
						break;
					}
				}
				if(p[i] == null)
				{
					System.out.println("Perfil não encontrado!");
				}
				break;
				
			case 6:
				i = 0;
				nome = input.nextLine();
				System.out.println("Didite o nome da pessoa: ");
				nome = input.nextLine();
				for(i=0; i<19; i++)
				{
					if(p[i]  != null &&  p[i].getNome().equals(nome))
					{
						p[i].visualizarPerfil();
						break;
					}
				}
				if(p[i] == null)
				{
					System.out.println("Perfil não encontrado!");
				}
				break;
				
			case 7:
				System.out.println("Digite o nome do perfil no qual você deseja visualizar as postagens: ");
				nome = input.nextLine();
				nome = input.nextLine();
				
				for(i=0; i<19; i++)
				{
					if(p[i]  != null &&  p[i].getNome().equals(nome))
					{
						p[i].listarPostagens();
						break;
					}
				}
				if(p[i] == null)
				{
					System.out.println("Perfil não encontrado!");
				}
				break;
				
			case 9:
				Perfil paux = new Perfil();
				System.out.println("Digite o nome do seu perfil: ");
				nome = input.nextLine();
				nome = input.nextLine();
				for(i=0; i<19; i++)
				{
					if(p[i]  != null &&  p[i].getNome().equals(nome))
					{
						paux = p[i];
					}
				}
				if(paux == null)
				{
					System.out.println("Perfil não encontrado!");
					break;
				}
				
				System.out.println("Digite o nome da pessoa que você deseja solicitar amizade: ");
				nome2 = input.nextLine();
				
				for(i=0; i<19; i++)
				{
					if(p[i]  != null &&  p[i].getNome().equals(nome2))
					{
						p[i].addSolicitacao(paux);
						break;
					}
				}
				if(p[i] == null)
				{
					System.out.println("Perfil não encontrado!");
				}
				break;
				
			case 10:
				System.out.println("Digite o nome do seu perfil: ");
				nome = input.nextLine();
				nome = input.nextLine();
				
				for(i=0; i<19; i++)
				{
					if(p[i]  != null &&  p[i].getNome().equals(nome))
					{
						p[i].accSolicitacao();
						break;
					}
				}
				if(p[i] == null)
				{
					System.out.println("Perfil não encontrado!");
				}
				break;
				
			}
				
		}while(controller != 99);
	}
}
