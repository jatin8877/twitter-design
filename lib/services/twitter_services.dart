import '../models/user_details.dart';

class TwitterServices {
  List<UserDetails> getDetails() {
    List<UserDetails> users = [
      UserDetails(
        'Jatin',
        '@jatin_kumar',
        'https://flatlogic.github.io/light-blue-vue-admin/img/a5.84f014f0.jpg',
        'I am a Android developer',
        5,
        22,
        30,
        222,
        87,
        true,
        photoUrl:
            'https://images.unsplash.com/photo-1607252650355-f7fd0460ccdb?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8YW5kcm9pZHxlbnwwfHwwfHw%3D&w=1000&q=80',
      ),
      //
      UserDetails(
        'Sumit',
        '@sumit_bura',
        'https://images.unsplash.com/photo-1633332755192-727a05c4013d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8dXNlcnxlbnwwfHwwfHw%3D&w=1000&q=80',
        'I am a web developer',
        10,
        43,
        110,
        140,
        57,
        false,
        // photoUrl:
        //     'https://cdn.pixabay.com/photo/2016/04/04/14/12/monitor-1307227__480.jpg',
      ),
      UserDetails(
        'Ashish',
        '@ashish_kumar',
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRMBF7GiWBnuwHZEoUkGAktUZR91Ge2bVJ9rhYg7-YRz0M7tdM-8Os4tSZno4Jd6j5p9p8&usqp=CAU',
        'I am a HR',
        20,
        64,
        49,
        88,
        34,
        true,
        photoUrl:
            'https://media.istockphoto.com/photos/human-resources-concept-diagram-picture-id1047823928?k=20&m=1047823928&s=612x612&w=0&h=qAnDuzD17DY_NNqT-xx5-rT9oJBcYdDxIiCCfmGpfUM=',
      ),
      UserDetails(
        'Sekhar ',
        '@Sekhar_Shrinavasan',
        'https://pluralsight.imgix.net/author/lg/sekhar-srinivas-v3.jpg',
        'C# and flutter Teacher',
        20,
        97,
        210,
        522,
        348,
        true,
        photoUrl:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRVeeNRpiW-IQszNfTrlTUeTSTTYvW_WwPIJQ&usqp=CAU',
      ),
    ];
    return users;
  }
}
