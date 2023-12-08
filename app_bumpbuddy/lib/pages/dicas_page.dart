import 'dart:html';

import 'package:flutter/material.dart';

class DicasPage extends StatefulWidget {
  const DicasPage({super.key});

  @override
  State<DicasPage> createState() => _DicasPageState();
}

class _DicasPageState extends State<DicasPage> {

    final List<String> titulos = [
                              "Dicas para tornar o período gestacional mais leve:",
                              "Opções comuns de parto:",
                              "Atividades que podem ser benéficas durante a gravidez:",
                              "Ter uma doula durante o parto é uma escolha pessoal. Aqui estão algumas coisas simples a considerar:",
                              "Quando as contrações começam, aqui estão algumas coisas simples a fazer:",
                            ];
   final List<String> subtitulos = [
                                      "Alimentação Balanceada: Priorize alimentos nutritivos, como frutas, vegetais, proteínas magras e grãos integrais. Exercícios Leves: Pratique atividades físicas suaves, como caminhadas regulares, para melhorar o bem-estar. Hidratação: Beba bastante água para prevenir a desidratação e manter-se saudável. Descanso Adequado: Garanta boas noites de sono e tire cochilos quando necessário. Gestão do Estresse: Envolva-se em atividades relaxantes, como meditação ou respiração profunda. Vestuário Confortável: Use roupas confortáveis e ajustáveis para acomodar as mudanças no corpo. Compartilhe Experiências: Converse com outras gestantes para trocar experiências e dicas. Consultas Médicas Regulares: Mantenha-se em dia com as consultas médicas para monitorar a saúde do bebê e receber orientações. Cuidados Pessoais: Mime-se com pequenos luxos, como massagens suaves e banhos relaxantes. Educação sobre a Gravidez: Aprenda sobre as fases da gravidez para reduzir a ansiedade e se preparar melhor.",
                                      "Vantagens: Recuperação geralmente mais rápida, menos tempo de internação hospitalar. Considerações: Pode haver desconforto e dor durante o trabalho de parto. Parto Cesárea: Vantagens: Planejamento preciso, menos tempo de trabalho de parto, útil em emergências. Considerações: Recuperação geralmente mais demorada, riscos cirúrgicos. Parto Natural com Assistência Médica (Parto Humanizado): Vantagens: Enfoque no bem-estar emocional, flexibilidade no ambiente, menos intervenções médicas. Considerações: A disponibilidade pode variar dependendo do local e do provedor de cuidados. Parto na Água: Vantagens: Alívio potencial da dor, ambiente relaxante. Considerações: Limitações em termos de complicações possíveis, necessidade de instalações específicas. Parto Domiciliar: Vantagens: Ambiente familiar, controle sobre o processo. Considerações: Riscos potenciais, necessidade de profissional qualificado e plano de contingência. Parto Assistido por Fórceps ou Ventosa: Vantagens: Ajuda em casos de dificuldade no trabalho de parto. Considerações: Riscos associados, precisa ser feito por profissional treinado.",
                                      "Caminhadas: Uma atividade de baixo impacto que pode ser adaptada ao condicionamento físico de cada gestante. Natação: A água oferece suporte ao corpo, aliviando o peso nas articulações. Excelente para fortalecer músculos e melhorar a circulação. Ioga para Gestantes: A ioga adaptada à gravidez pode ajudar a melhorar a flexibilidade, fortalecer músculos específicos e promover relaxamento. Exercícios Aeróbicos de Baixo Impacto: Atividades como aeróbica aquática ou dança de baixo impacto podem ser benéficas para a saúde cardiovascular. Exercícios com Bola de Pilates: A bola de Pilates pode ajudar a fortalecer os músculos do núcleo, melhorar o equilíbrio e aliviar a pressão nas costas. Alongamentos: Manter a flexibilidade é crucial. Certifique-se de incluir alongamentos suaves e específicos para gestantes. Treinamento de Força Leve: Utilize pesos leves para fortalecer os músculos, com foco em áreas como pernas, costas e músculos do assoalho pélvico. Pilates Pré-Natal: Especialmente desenvolvido para gestantes, o Pilates pré-natal se concentra no fortalecimento do core e na melhoria da postura. Aulas de Respiração e Relaxamento: Aprender técnicas de respiração e relaxamento pode ser útil para enfrentar o estresse e preparar-se para o parto. Aulas Específicas para Gestantes: Algumas academias oferecem aulas específicas para gestantes, adaptadas às necessidades e limitações durante a gravidez. Sempre consulte seu profissional de saúde antes de iniciar ou modificar qualquer programa de exercícios durante a gravidez. Cada gestação é única, e as atividades físicas devem ser adaptadas às condições individuais e ao estágio da gravidez. O objetivo é manter uma rotina que promova o bem-estar físico e emocional, contribuindo para uma gestação saudável.",
                                      "Vantagens de Ter uma Doula: Apoio Emocional e Físico: Doulas oferecem ajuda para acalmar emoções e aliviar desconfortos físicos durante o parto. Advocacia: Elas podem ajudar a comunicar suas preferências à equipe médica. Apoio ao Parceiro: Doulas também apoiam o parceiro na sala de parto. Considerações: Custo: Doulas podem ter um custo adicional. Apoio Existente: Se você já tem apoio suficiente, talvez não sinta necessidade de uma doula. Preferências Pessoais: Pergunte a si mesma se você quer esse tipo de apoio contínuo. Circunstâncias Específicas: Se houver circunstâncias médicas específicas, converse com seu médico. Não há resposta única. Pode ser útil se você quer suporte extra, mas a decisão depende de você e do que faz você se sentir mais confortável.",
                                      "Cronometre as Contrações: Marque o tempo entre o início de uma contração e o início da próxima. Avise Sua Equipe: Informe seu parceiro ou quem estiver planejando estar com você no parto. Fique em Casa, se Possível: A menos que o médico diga o contrário, fique em casa no início do trabalho de parto. Hidratação e Comida Leve: Beba água e coma levemente para se manter energizada. Relaxamento: Use técnicas de respiração e encontre posições confortáveis. Mude de Posição: Experimente diferentes posições para se sentir mais confortável. Chuveiro ou Banheira: Um banho quente pode ajudar a aliviar o desconforto. Contate o Médico: Se as contrações ficarem mais intensas, ligue para o médico para obter orientações. Prepare-se para Ir à Maternidade: Quando for a hora indicada pelo médico, comece a se preparar para ir à maternidade. Lembre-se de seguir as orientações do médico e confiar em sua intuição. Se tiver dúvidas, entre em contato com a equipe de saúde.",
                                    ];

 @override
                                    Widget build(BuildContext context) {
                                      return   Padding(
                                        padding: const EdgeInsets.all(16.0),
                                         child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Expanded(
                                          flex: 4,
                                          child: ListView.separated(
                                          shrinkWrap:true,
                                          itemBuilder: ((context, index) {
                                            return ListTile(
                                                title: Text(titulos[index], style: TextStyle(fontWeight: FontWeight.bold),),
                                                subtitle: Text(subtitulos [index])
                                          );
                                        }),
                                          separatorBuilder:(_,__)  => Divider(),
                                          itemCount: 5,
                                        
                                        ),
                                        ),
                                      ]
                                         ),    
                                    );
                                  }
                                }