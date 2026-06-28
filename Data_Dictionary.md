# 📖 Data Dictionary

## 📌 Project Context
**Uterine Fibroids Analysis Dashboard**

This dataset is a reconstructed synthetic dataset created from summary statistics reported in:
> **A Five-Year Survey of Uterine Fibroids at a Nigerian Tertiary Hospital** 
> *by A. D. Isah et al., published in the Open Journal of Obstetrics and Gynecology.*

The dataset contains **198 reconstructed patient records** designed for educational, analytical, and visualization purposes.

---

# 📊 Dataset Overview

| Attribute | Description |
| :--- | :--- |
| **Number of Records** | 198 |
| **Dataset Type** | Reconstructed Synthetic Clinical Dataset |
| **Clinical Focus** | Uterine Fibroids |
| **Geographic Context** | Nigeria |
| **Study Period** | Five Years |
| **Intended Use** | Data Analytics, SQL Practice, Dashboard Development, Healthcare Data Visualization |

---

# 🔤 Variable Definitions

### 🔑 Patient_ID

| Property | Description |
| :--- | :--- |
| **Variable Name** | `Patient_ID` |
| **Data Type** | Text / VARCHAR(10) |
| **Description** | Unique identifier assigned to each reconstructed patient record |
| **Example** | `UF001` |

---

### 🎂 Age_Group

| Property | Description |
| :--- | :--- |
| **Variable Name** | `Age_Group` |
| **Data Type** | Categorical / Text |
| **Description** | Age category of the patient at presentation |
| **Possible Values** | `20–29`, `30–39`, `40–49`, `50+` |

---

### 🤰 Parity

| Property | Description |
| :--- | :--- |
| **Variable Name** | `Parity` |
| **Data Type** | Categorical / Text |
| **Description** | Number of previous births experienced by the patient |
| **Possible Values** | `Nulliparous`, `Primiparous`, `Multiparous`, `Grand Multiparous` |

---

### 🎓 Education_Level

| Property | Description |
| :--- | :--- |
| **Variable Name** | `Education_Level` |
| **Data Type** | Categorical / Text |
| **Description** | Highest educational attainment of the patient |
| **Possible Values** | `No Formal Education`, `Primary`, `Secondary`, `Tertiary` |

---

### 🏥 Primary_Presentation

| Property | Description |
| :--- | :--- |
| **Variable Name** | `Primary_Presentation` |
| **Data Type** | Categorical / Text |
| **Description** | Main clinical symptom reported at presentation |
| **Possible Values** | `Menorrhagia`, `Abdominal Mass`, `Infertility`, `Abdominal Pain` |

---

### 📏 Uterine_Size

| Property | Description |
| :--- | :--- |
| **Variable Name** | `Uterine_Size` |
| **Data Type** | Categorical / Text |
| **Description** | Estimated uterine size documented during clinical evaluation |
| **Possible Values** | `10–12 Weeks`, `13–17 Weeks`, `18–20 Weeks`, `Greater Than 20 Weeks` |

---

### 🧬 Fibroid_Location

| Property | Description |
| :--- | :--- |
| **Variable Name** | `Fibroid_Location` |
| **Data Type** | Categorical / Text |
| **Description** | Anatomical location of the uterine fibroid |
| **Possible Values** | `Intramural`, `Submucous`, `Subserosal`, `Cervical` |

#### 🔍 Anatomical Definitions

| Location | Meaning |
| :--- | :--- |
| **Intramural** | Fibroid located within the muscular wall of the uterus |
| **Submucous** | Fibroid projecting into the uterine cavity |
| **Subserosal** | Fibroid projecting outward from the uterine wall |
| **Cervical** | Fibroid located in the cervix |

---

### 🩻 Surgery_Performed

| Property | Description |
| :--- | :--- |
| **Variable Name** | `Surgery_Performed` |
| **Data Type** | Categorical / Text |
| **Description** | Surgical procedure performed for treatment |
| **Possible Values** | `Myomectomy`, `TAH`, `Myomectomy + Tuboplasty`, `Vaginal Polypectomy` |

#### 🔍 Surgical Definitions

| Procedure | Meaning |
| :--- | :--- |
| **Myomectomy** | Surgical removal of fibroids while preserving the uterus |
| **TAH** | Total Abdominal Hysterectomy |
| **Myomectomy + Tuboplasty** | Myomectomy combined with tubal reconstructive surgery |
| **Vaginal Polypectomy** | Surgical removal of a polyp through the vaginal route |

---

### ⚠️ Postoperative_Complication

| Property | Description |
| :--- | :--- |
| **Variable Name** | `Postoperative_Complication` |
| **Data Type** | Categorical / Text *(Stored as string value 'None')* |
| **Description** | Complication recorded after surgery |
| **Possible Values** | `Anaemia`, `Wound Infection`, `Wound Dehiscence`, `None` |

#### 🔍 Complication Definitions

| Complication | Meaning |
| :--- | :--- |
| **Anaemia** | Reduction in haemoglobin concentration following surgery |
| **Wound Infection** | Infection occurring at the surgical site |
| **Wound Dehiscence** | Partial or complete reopening of the surgical wound |
| **None** | No postoperative complication recorded |

---

# ⚠️ Important Disclaimer

This dataset is a **reconstructed synthetic dataset** developed from published summary statistics and does **not** contain real patient records. 

The dataset is intended solely for educational purposes, healthcare analytics practice, SQL querying, dashboard development, and data visualization projects.
