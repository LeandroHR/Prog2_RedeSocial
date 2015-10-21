import java.util.Scanner;
public class app 
{
	public static void main(String[] args) 
	{
		Perfil[] p = new Perfil[20];
		//int cont = 0;
		int i = 0;
		Scanner input = new Scanner(System.in);
		int controller = 0;
		String nome;
		String usuario;
		String funcao;
		String linguagens;
		String metodologia;
		String localizacao;
		char sexo;
		String formacao;
		
		do
		{
			System.out.println("1 - Cadastrar perfil");
			System.out.println("2 - Excluir perfil");
			System.out.println("3 - Escrever postagem");
			System.out.println("4 - Comentar postagem");
			System.out.println("5 - Excluir postagem");
			System.out.println("6 - Visualizar perfil");
			System.out.println("7 - Visualizar posts de um perfil");
			System.out.println("8 - Visualizar amizades");
			System.out.println("9 - Solicitar amizade");
			System.out.println("10 - Cancelar amizade");
			System.out.println("99 - Sair");
			
			controller = input.nextInt();
			
			switch(controller)
			{
			case 1: 
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
					if(i > 20)
					{
						System.out.println("Não é possível cadastrar mais perfis.");
						break;
					}
					i++;
				}
				if(i > 20)
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
				
				for(i=0; i<=20; i++)
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
				System.out.println("Digite o nome do perfil: ");
				nome = input.nextLine();
				
				for(i=0; i<=20; i++)
				{
					if(p[i].getNome().equals(nome))
					{
						
					}
				}
				
			case 6:
				i = 0;
				nome = input.nextLine();
				System.out.println("Didite o nome da pessoa: ");
				nome = input.nextLine();
				for(i=0; i<=20; i++)
				{
					if(p[i].getNome().equals(nome))
					{
						p[i].visualizarPerfil();
						break;
					}
					System.out.println("Perfil não encontrado!");
				}
				break;
			}
				
		}while(controller != 99);
	}
}
