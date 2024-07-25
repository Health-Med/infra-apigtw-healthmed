# Provisionamento de API Gateway com Terraform

Este repositório contém configurações do Terraform para provisionar um API Gateway com integrações HTTP para um Application Load Balancer (ALB) existente. A configuração inclui endpoints GET, POST e PUT.

---
nome: `apigtw-ordering-system-blues-burger`

## Estrutura do Projeto

```plaintext
.
├── readme.MD
├── .github
└── infra
    ├── data.tf
    ├── environment.tf
    ├── locals.tf
    ├── main.tf
    ├── provider.tf
    └── routes.tf
```

## Pré-requisitos

- Terraform v1.0 ou superior
- AWS CLI configurada com permissões adequadas
- Uma função Lambda existente e um ALB na região da AWS especificada

## Configuração

1. **Clonar o repositório:**
    ```sh
    git clone https://github.com/Health-Med/infra-apigtw-healthmed.git
    cd api-gateway-terraform
    ```

2. **Instale o Terraform**

   Se você ainda não tem o Terraform instalado, siga as instruções no [site oficial do Terraform](https://www.terraform.io/downloads.html).

3. **Inicializar o Terraform:**
    ```sh
    terraform init
    ```

4. **Aplicar a configuração do Terraform:**
    ```sh
    terraform apply
    ```

5. **Confirmar a ação de aplicação:**
    ```sh
    terraform apply --auto-approve
    ```

## Saídas

- **api_endpoint**: O endpoint do API Gateway provisionado.


## Limpeza

Para destruir os recursos criados por esta configuração do Terraform:

```sh
terraform destroy
```