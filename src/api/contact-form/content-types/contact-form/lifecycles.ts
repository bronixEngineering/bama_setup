const nodemailer = require('nodemailer');


const transporter = nodemailer.createTransport({
    service: 'Gmail', // E-posta sağlayıcınızın adını buraya yazın (örneğin, Gm>
    auth: {
      user: 'bronixengineering@gmail.com', // E-posta adresiniz
      pass: 'yokf pavz aofu hppr', // E-posta şifreniz
    },
  });

        const mailOptions = {
    from: 'larusahan@gmail.com', // Gönderen e-posta adresi
    to: 'kurateric@gmail.com', // Alıcı e-posta adresi
    subject: 'Konu', // E-posta konusu
    text: 'E-posta metni', // E-posta metni (isteğe bağlı)
    html: '<p>E-posta içeriği HTML</p>', // HTML formatında e-posta içeriği (is>
  };

export default {
    async afterCreate(event) {    // Connected to "Save" button in admin panel
        const { result } = event;
        console.log(result)
        try{
	    console.log("buradayim")
	
	const mailOptions = {
    from: 'larusahan@gmail.com', // Gönderen e-posta adresi
    to: 'bilgi@bamateknoloji.com', // Alıcı e-posta adresi
    subject: 'BamaTech - Contact Form', // E-posta konusu
    text: 'E-posta metni', // E-posta metni (isteğe bağlı)
    html: `<p>İsim: ${result.name}</p><br><p>Soyisim: ${result.lastName}</p><br><p>Şirket: ${result.company}</p><br><p>Email: ${result.email}</p><br><p>Message: ${result.message}</p><br><p>Telefon No: ${result.phone}</p>`, // HTML formatında e-posta içeriği (is>
  };

	const info = transporter.sendMail(mailOptions);
	console.log('Email sended!')
        } catch(err) {
            console.log(err);
        }
    }
}
