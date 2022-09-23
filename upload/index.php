
<?php
// Ấn định  dung lượng file ảnh upload
define ("MAX_SIZE","100");

// hàm này đọc phần mở rộng của file. Nó được dùng để kiểm tra nếu
// file này có phải là file hình hay không .
function getExtension($str) {
$i = strrpos($str,".");
if (!$i) { return ""; }
$l = strlen($str) - $i;
$ext = substr($str,$i+1,$l);
return $ext;
}

$errors=0;

if(isset($_POST['Submit']))
{
$image=$_FILES['image']['name'];
// Nếu nó không rỗng
if ($image)
{
// Lấy tên gốc của file
$filename = stripslashes($_FILES['image']['name']);

//Lấy phần mở rộng của file
$extension = getExtension($filename);
$extension = strtolower($extension);
// Nếu nó không phải là file hình thì sẽ thông báo lỗi
if (($extension != "jpg") && ($extension != "jpeg") && ($extension !=
"png") && ($extension != "gif"))
{
// xuất lỗi ra màn hình
echo '<h1>Đây không phải là file hình!</h1>';
$errors=1;
}
else
{
//Lấy dung lượng của file upload
$size=filesize($_FILES['image']['tmp_name']);
if ($size > MAX_SIZE*1024)
{
echo '<h1>Vượt quá dung lượng cho phép!</h1>';
$errors=1;
}

// đặt tên mới cho file hình up lên
$image_name=time().'.'.$extension;
// gán thêm cho file này đường dẫn
$newname="images/".$image_name;
// kiểm tra xem file hình này đã upload lên trước đó chưa
$copied = copy($_FILES['image']['tmp_name'], $newname);
if (!$copied)
{
echo '<h1> File hình này đã tồn tại </h1>';
$errors=1;
}}}}

if(isset($_POST['Submit']) && !$errors)
{
echo "<h1>File hình đã được Upload thành công </h1>";
}

?>

<!-- nhớ đặt enctype to "multipart/frm-data"
và sử dụng  input type "file" -->
<form name="newad" method="post" enctype="multipart/form-data"
action="">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.0/css/bootstrap.min.css" />
  <style>
    .preview-img {max-width: 200px;margin: 0 1em 1em 0;padding: 0.5em;border: 1px solid #ccc; border-radius: 3px;}
  </style>
</head>
<table>
<tr>
<div class="container">
    <h1 class="my-5 text-center">Preview image file upload</h1>
    <div class="preview"><input type="file" name="image" class="form-control mb-4"  style="    width: 100%;
    height: 50%;"/>
    </div>
    <input name="Submit" type="submit" value="Upload image">
  </div></tr>
<tr><td>
</td></tr>
</table>
<script> 
const ipnFileElement = document.querySelector('input')
const resultElement = document.querySelector('.preview')
const validImageTypes = ['image/gif', 'image/jpeg', 'image/png']

ipnFileElement.addEventListener('change', function(e) {
  const files = e.target.files
  const file = files[0]
  const fileType = file['type']

  if (!validImageTypes.includes(fileType)) {
    resultElement.insertAdjacentHTML(
      'beforeend',
      '<span class="preview-img">Chọn ảnh đi :3</span>'
    )
    return
  }

  const fileReader = new FileReader()
  fileReader.readAsDataURL(file)

  fileReader.onload = function() {
    const url = fileReader.result
    resultElement.insertAdjacentHTML(
      'beforeend',
      `<img src="${url}" alt="${file.name}" class="preview-img" />`
    )
  }
})


</script>
</form>
