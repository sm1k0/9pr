using Spire.Doc;
using Spire.Doc.Documents;
using System;
using System.IO;
using System.Net;
using System.Net.Mail;
using System.Windows;
using Microsoft.Win32;
using System.Windows.Documents;

namespace vipief
{
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
        }

        private void NewFile_Click(object sender, RoutedEventArgs e)
        {
            richTextBox.Document.Blocks.Clear();
        }

        private void OpenFile_Click(object sender, RoutedEventArgs e)
        {
            OpenFileDialog openFileDialog = new OpenFileDialog
            {
                Filter = "Word Documents|*.docx"
            };
            if (openFileDialog.ShowDialog() == true)
            {
                LoadWordDocument(openFileDialog.FileName);
            }
        }

        private void SaveFile_Click(object sender, RoutedEventArgs e)
        {
            SaveFileDialog saveFileDialog = new SaveFileDialog
            {
                Filter = "Word Documents|*.docx"
            };
            if (saveFileDialog.ShowDialog() == true)
            {
                SaveWordDocument(saveFileDialog.FileName);
            }
        }

        private void SendFile_Click(object sender, RoutedEventArgs e)
        {
            SendMailDialog sendMailDialog = new SendMailDialog();
            if (sendMailDialog.ShowDialog() == true)
            {
                string from = sendMailDialog.From;
                string to = sendMailDialog.To;
                string subject = sendMailDialog.Subject;
                string body = sendMailDialog.Body;

                SaveFileDialog saveFileDialog = new SaveFileDialog
                {
                    Filter = "Word Documents|*.docx"
                };
                if (saveFileDialog.ShowDialog() == true)
                {
                    string filePath = saveFileDialog.FileName;
                    SaveWordDocument(filePath);
                    SendEmail(from, to, subject, body, filePath);
                }
            }
        }

        private void LoadWordDocument(string fileName)
        {
            Document document = new Document();
            document.LoadFromFile(fileName);
            MemoryStream stream = new MemoryStream();
            document.SaveToStream(stream, FileFormat.Rtf);
            stream.Position = 0;
            richTextBox.Selection.Load(stream, DataFormats.Rtf);
        }

        private void SaveWordDocument(string fileName)
        {
            TextRange textRange = new TextRange(richTextBox.Document.ContentStart, richTextBox.Document.ContentEnd);
            MemoryStream stream = new MemoryStream();
            textRange.Save(stream, DataFormats.Rtf);
            stream.Position = 0;
            Document document = new Document();
            document.LoadFromStream(stream, FileFormat.Rtf);
            document.SaveToFile(fileName, FileFormat.Docx);
        }

        private void SendEmail(string from, string to, string subject, string body, string attachmentPath)
        {
            try
            {
                MailMessage mail = new MailMessage(from, to)
                {
                    Subject = subject,
                    Body = body
                };
                Attachment attachment = new Attachment(attachmentPath);
                mail.Attachments.Add(attachment);

                SmtpClient smtpClient = new SmtpClient("smtp.gmail.com", 587)
                {
                    Credentials = new NetworkCredential("your_email@gmail.com", "your_password"),
                    EnableSsl = true
                };

                smtpClient.Send(mail);
                MessageBox.Show("Email sent successfully!");
            }
            catch (Exception ex)
            {
                MessageBox.Show("Error sending email: " + ex.Message);
            }
        }
    }
}
